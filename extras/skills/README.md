# Skills (example)

**EN** — A skill is a folder with a `SKILL.md` that teaches Claude a repeatable procedure. Claude loads it only
when relevant (progressive disclosure), so skills add capability without bloating every prompt. This folder
ships one example, `commit-helper`, for you to copy and adapt.

**VI** — Skill là một folder chứa `SKILL.md` dạy Claude một quy trình lặp lại. Claude chỉ nạp khi liên quan
(progressive disclosure), nên skill thêm năng lực mà không phình mọi prompt. Đây là 1 skill mẫu `commit-helper`
để bạn nhân bản.

## Enable · Bật
Copy the skill into your skills directory:

```bash
mkdir -p ~/.claude/skills
cp -r extras/skills/commit-helper ~/.claude/skills/commit-helper   # global (all projects)
# or, per-project:
mkdir -p .claude/skills && cp -r extras/skills/commit-helper .claude/skills/commit-helper
```

Then just ask Claude to "commit" after staging changes — it will use the skill.

## Full guides · Bài đầy đủ
What skills are + when to use them: **https://ongboit.com/claude-code-skills/**
Write your own skill step by step: **https://ongboit.com/tao-claude-code-skill/**
