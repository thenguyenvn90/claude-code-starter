#!/usr/bin/env bash
# PreToolUse hook — block Claude from reading secret files (.env, keys, credentials).
# Mechanism: exit code 2 blocks the tool call; the message on stderr is shown to Claude as the reason.
#
# Enable: see settings.snippet.json in this folder, then copy this script somewhere stable
#   (e.g. ~/.claude/hooks/protect-env.sh) and point the hook command at it. chmod +x it.
#
# How hooks work + safer patterns: https://ongboit.com/claude-code-hooks/
# Why leaked keys matter:          https://ongboit.com/claude-code-anthropic-api-key-env-trap/

input=$(cat)   # PreToolUse sends the tool call as JSON on stdin

if printf '%s' "$input" | grep -qiE '(^|[^a-zA-Z0-9_./])\.env($|[^a-zA-Z])|\.env\.|/\.aws/|/\.ssh/|id_rsa|\.pem([^a-zA-Z]|$)|credentials'; then
  echo "Blocked by protect-env hook: reading secret files (.env / keys / credentials) is not allowed. See https://ongboit.com/claude-code-anthropic-api-key-env-trap/" >&2
  exit 2
fi

exit 0
