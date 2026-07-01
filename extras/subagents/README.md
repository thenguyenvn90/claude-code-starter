# Subagents (example)

**EN** — A subagent is a specialized helper Claude can delegate a bounded task to, in its own context window, so
the main conversation stays clean. This folder ships one example, `code-reviewer` (read-only), that reviews your
diff before you commit.

**VI** — Subagent là một trợ lý chuyên biệt mà Claude giao một việc có phạm vi rõ, chạy trong context riêng, để
cuộc hội thoại chính đỡ rối. Đây là 1 subagent mẫu `code-reviewer` (chỉ đọc) để review diff trước khi commit.

## Enable · Bật
Subagents live in an `agents/` directory:

```bash
mkdir -p ~/.claude/agents
cp extras/subagents/code-reviewer.md ~/.claude/agents/code-reviewer.md   # global
# or per-project:
mkdir -p .claude/agents && cp extras/subagents/code-reviewer.md .claude/agents/code-reviewer.md
```

Then ask Claude to "review my changes with the code-reviewer subagent" before committing.

## Full guide · Bài đầy đủ
How to design subagents that actually help (roles, scope, verification): **https://ongboit.com/claude-code-subagent-best-practices/**
