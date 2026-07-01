# Status line

**EN** — A one-line status bar at the bottom of Claude Code showing the current model, working folder, a
color-coded context-usage bar, and your git branch. Runs locally, costs no API tokens.

**VI** — Thanh trạng thái một dòng dưới đáy Claude Code: model đang dùng, thư mục, thanh % context đổi màu, và
git branch. Chạy local, không tốn token API.

## Enable · Bật

```bash
cp extras/statusline/statusline.sh ~/.claude/statusline.sh
chmod +x ~/.claude/statusline.sh
```

Add to `~/.claude/settings.json`:

```json
{ "statusLine": { "type": "command", "command": "~/.claude/statusline.sh" } }
```

Needs [`jq`](https://jqlang.github.io/jq/). **Windows:** run inside Git Bash or WSL2 and write the path with
forward slashes.

## Full guide · Bài đầy đủ
Fields you can show (cost, tokens, rate limits…), Windows/PowerShell setup, and troubleshooting:
**https://ongboit.com/claude-code-status-line/**
