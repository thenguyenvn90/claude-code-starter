#!/usr/bin/env bash
# Claude Code status line — shows: [Model] folder | context bar %  | git branch
# Needs `jq`. Colors: green < 70% context, yellow 70-89%, red 90%+.
#
# Enable:
#   1) cp extras/statusline/statusline.sh ~/.claude/statusline.sh && chmod +x ~/.claude/statusline.sh
#   2) add to ~/.claude/settings.json:
#        "statusLine": { "type": "command", "command": "~/.claude/statusline.sh" }
#   Windows: run inside Git Bash / WSL2 and use forward slashes in the path.
#
# Full guide (fields, Windows/PowerShell, more examples): https://ongboit.com/claude-code-status-line/

input=$(cat)
MODEL=$(echo "$input" | jq -r '.model.display_name')
DIR=$(echo "$input" | jq -r '.workspace.current_dir')
PCT=$(echo "$input" | jq -r '.context_window.used_percentage // 0' | cut -d. -f1)

if   [ "$PCT" -ge 90 ]; then COLOR='\033[31m'   # red
elif [ "$PCT" -ge 70 ]; then COLOR='\033[33m'   # yellow
else COLOR='\033[32m'; fi                        # green
RESET='\033[0m'

FILLED=$((PCT / 10)); EMPTY=$((10 - FILLED))
printf -v FILL "%${FILLED}s"; printf -v PAD "%${EMPTY}s"
BAR="${FILL// /▓}${PAD// /░}"

BRANCH=""
if git rev-parse --git-dir > /dev/null 2>&1; then
  BRANCH=" | 🌿 $(git branch --show-current 2>/dev/null)"
fi

echo -e "[$MODEL] 📁 ${DIR##*/} | ${COLOR}${BAR}${RESET} ${PCT}%${BRANCH}"
