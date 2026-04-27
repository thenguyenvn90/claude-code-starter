# Project Name

> Describe your project in 1-2 sentences.
> Claude reads this file at the start of every session — keep it focused and accurate.

## Tech Stack

- Language: 
- Framework: 
- Database: 
- Deployment: 

## Commands

```bash
# Add your actual commands here
# npm run dev       # Start dev server
# npm run build     # Production build
# npm test          # Run tests
```

## Project Structure

```
src/               # Source code
tests/             # Test files
docs/              # Documentation
public/            # Static assets
```

## Decision Flow

1. Existing code does what's needed? → Use it, don't rewrite.
2. Need new code? → Write minimal code that solves the problem.
3. Error? → Read the error, fix root cause, test again.
4. Unsure about scope? → Ask before proceeding.

## Key Principles

- Simple beats clever. A good if/else beats a bad abstraction.
- Don't add features beyond what was asked.
- Don't add comments or docstrings to code you didn't change.
- Validate at system boundaries only (user input, external APIs).
- No backwards-compatibility shims for code you're certain is unused.

## Human-in-the-Loop

Always ask before: deleting files, pushing to git, installing packages, modifying configs, sending external requests.  
Auto-approve: reading files, running dev server, formatting code, running tests.

## Compact Instructions

When compacting, always preserve:
- Current task objective and acceptance criteria
- File paths modified this session
- Test results from the latest run
- Error messages being investigated

Use `/compact focus on [topic]` — never `/compact` without specifying what to keep.

## Memory System

Claude has 3 memory layers:

1. **CLAUDE.md** (this file) — never compacted, always loaded. Put permanent rules here.
2. **Auto memory** (`~/.claude/projects/.../MEMORY.md`) — Claude writes patterns and lessons. Check with `/memory`.
3. **Session context** — conversation history. Lost on `/clear` or new session.

Rule: if a rule matters, put it in CLAUDE.md — not in chat.

## Gotchas

- Add project-specific warnings here as you discover them.
- Example: "Never run migrations without a backup — prod DB has no rollback."
- **Plan the undo before shipping.** Every change needs a rollback path — revert commit, feature flag flip, or migration rollback. No answer = not ready. Gate risky changes behind a flag so rollback is a toggle, not a redeploy.

## Reference Docs

- [CLAUDE.md Guide](https://ongboit.com/claude-md-la-gi/)
- [Permission Modes](https://ongboit.com/claude-code-permission-modes/)
- [Token Savings](https://ongboit.com/tiet-kiem-token-claude-code/)
- [Memory & Context](https://ongboit.com/claude-code-memory-context/)
- [Context Compaction](https://ongboit.com/claude-code-context-compaction/)
- [Roadmap: Zero to Power User](https://ongboit.com/claude-code-roadmap/)
