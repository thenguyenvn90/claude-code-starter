# Hook: protect `.env` and secrets

**EN** — A `PreToolUse` hook that stops Claude from reading secret files (`.env`, `~/.aws`, `~/.ssh`, keys,
credentials) — even if a prompt or a stray instruction tells it to. Hooks are deterministic shell scripts
Claude Code runs at set points; this one exits with code `2` to block the tool call.

**VI** — Một hook `PreToolUse` chặn Claude đọc file secret (`.env`, `~/.aws`, `~/.ssh`, key, credentials), kể cả
khi có prompt xúi nó đọc. Hook là script shell chạy tại các mốc cố định; hook này exit code `2` để chặn.

## Enable · Bật

```bash
mkdir -p ~/.claude/hooks
cp extras/hooks/protect-env.sh ~/.claude/hooks/protect-env.sh
chmod +x ~/.claude/hooks/protect-env.sh
```

Then merge `settings.snippet.json` into your `~/.claude/settings.json` (adjust the command path).

> The exact block format can differ by Claude Code version. This uses the stable "exit code 2 = block, stderr =
> reason" behavior. If your version expects a different shape, see the guide.
> Cơ chế chặn có thể khác theo version. File này dùng cách ổn định "exit 2 = chặn". Chi tiết ở bài.

## Full guide · Bài đầy đủ
How hooks work, every hook event, and safer patterns: **https://ongboit.com/claude-code-hooks/**
Why leaked keys are dangerous: **https://ongboit.com/claude-code-anthropic-api-key-env-trap/**
