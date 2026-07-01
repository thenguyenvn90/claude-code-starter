# Sandbox preset

**EN** — Lets Claude run most bash commands without asking, while the OS keeps them inside your project folder
and off unapproved network domains. Fewer "Accept" prompts, smaller blast radius. This preset also blocks the
sandbox from reading `~/.aws` and `~/.ssh` (the default does NOT).

**VI** — Cho Claude chạy phần lớn lệnh bash mà không hỏi, nhưng OS khóa lại trong thư mục dự án + chặn domain lạ.
Bớt bấm "Accept", giảm blast radius. Preset này còn chặn sandbox đọc `~/.aws` và `~/.ssh` (mặc định KHÔNG chặn).

## Enable · Bật
1. Merge `settings.snippet.json` into `~/.claude/settings.json`.
2. In Claude Code, run `/sandbox` and pick **auto-allow** (or regular).
3. **Platforms:** macOS (nothing to install), Linux/WSL2 (`sudo apt-get install bubblewrap socat`).
   **Native Windows is not supported — run Claude Code inside WSL2.**

> Sandbox reduces risk, it is not a complete isolation boundary (it doesn't inspect TLS, only wraps bash).
> Sandbox giảm rủi ro, KHÔNG phải isolation hoàn chỉnh (không soi TLS, chỉ bọc bash).

## Full guide · Bài đầy đủ
Modes, all config keys, Windows/WSL2, the isolation ladder, and what it does NOT protect:
**https://ongboit.com/claude-code-sandbox/**
