---
name: commit-helper
description: Write a clear Conventional-Commits message from the staged git diff. Use when the user says "commit", "write a commit message", or after staging changes. Does not push.
---

# Commit helper

Turn staged changes into one clear commit message. Never push; never commit secrets.

## Steps
1. Run `git diff --staged`. If nothing is staged, tell the user to `git add` first and stop.
2. Read the diff. Identify the ONE main change (if there are several unrelated changes, suggest splitting into
   separate commits instead of one vague message).
3. Write a [Conventional Commits](https://www.conventionalcommits.org/) message:
   - Header: `type(scope): summary` — type ∈ feat, fix, docs, refactor, test, chore. Summary in the imperative,
     ≤ 60 chars, no trailing period.
   - Body (optional): 1-3 short lines on the *why*, not the *what* (the diff already shows the what).
4. Scan the diff for anything that must NOT be committed (API keys, tokens, passwords, `.env` contents). If found,
   STOP and warn the user instead of committing.
5. Show the proposed message and run `git commit -m "..."` only after the user confirms.

## Rules
- One logical change per commit.
- Never `git push` from this skill.
- Never invent a scope; omit it if unclear.
