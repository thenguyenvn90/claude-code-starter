# Claude Code Starter

A minimal, production-ready template for starting any project with Claude Code. Clone, run `claude`, and start building.

Works for everyone: developers, content creators, marketers, and anyone learning Claude Code.

## Quick Start (3 minutes)

### Prerequisites

- [Claude Code installed](https://ongboit.com/cai-dat-claude-code/) (Pro plan $20/mo recommended)
- Git installed

### Setup

```bash
# 1. Use this template (click "Use this template" on GitHub) or clone directly
git clone https://github.com/ongboit/claude-code-starter.git my-project
cd my-project

# 2. Start Claude Code
claude

# 3. Let Claude analyze your project and customize CLAUDE.md
/init

# 4. Start building! Copy a prompt from FIRST-PROMPTS.md or describe what you want.
```

## What's Inside

| File | Purpose |
|------|---------|
| `CLAUDE.md` | Project brain. Claude reads this every session. Edit to match your project. |
| `.claude/settings.json` | Security permissions. Blocks dangerous commands, asks before git push. |
| `.claude/rules/quality.md` | Code quality rules. Applied to all files automatically. |
| `.gitignore` | Keeps secrets and personal configs out of git. |
| `FIRST-PROMPTS.md` | 10 copy-paste prompts to build your first app step by step. |

## How It Works

1. **CLAUDE.md** tells Claude what your project is, what tools you use, and how you work
2. **settings.json** protects you from accidental file deletion or secret exposure
3. **rules/quality.md** ensures Claude writes clean, consistent code
4. **FIRST-PROMPTS.md** gives you a guided path to build something real

After running `/init`, Claude will update CLAUDE.md with details it discovers about your project (build commands, file structure, dependencies).

## Customize for Your Project

Edit `CLAUDE.md` and fill in:

- **Project Name** — what you're building
- **Tech Stack** — your language, framework, database
- **Commands** — how to run, build, test your project
- **Current Focus** — what you're working on right now

Everything else (Decision Flow, Rules, Human-in-the-Loop) works out of the box.

## First Project Ideas

Not sure what to build? Check `FIRST-PROMPTS.md` for a guided 10-step tutorial to build a SaaS landing page. Or try these:

- **"Create a personal portfolio website"**
- **"Build a todo app with local storage"**
- **"Set up a blog with markdown files"**
- **"Create an API that returns quotes"**

## Essential Commands

Once inside Claude Code, these commands help you work efficiently:

| Command | What it does |
|---------|-------------|
| `/init` | Auto-generate CLAUDE.md from your codebase |
| `/help` | See all available commands |
| `/compact` | Compress conversation when it gets long |
| `/clear` | Start fresh conversation |
| `/cost` | Check token usage |
| `Shift+Tab` | Switch between Normal / Plan / Auto mode |

## Learn More

- [What is Claude Code?](https://ongboit.com/claude-code-la-gi/) — Full overview for beginners
- [Install Claude Code](https://ongboit.com/cai-dat-claude-code/) — Step-by-step installation guide
- [CLAUDE.md & .claude/ Config](https://ongboit.com/claude-md-la-gi/) — Deep dive into configuration
- [Permission Modes](https://ongboit.com/claude-code-permission-modes/) — 6 security levels explained
- [Save Tokens](https://ongboit.com/tiet-kiem-token-claude-code/) — Reduce costs by 50%+
- [Roadmap: Zero to Power User](https://ongboit.com/claude-code-roadmap/) — 8-level learning path

## FAQ

**Q: Do I need to know how to code?**
No. Claude Code writes code for you. You describe what you want in plain English (or any language).

**Q: Is this free?**
The template is free. Claude Code requires a subscription ($20/mo Pro plan recommended).

**Q: What if I already have a project?**
Copy the `.claude/` folder and `CLAUDE.md` into your existing project. Run `/init` to customize.

**Q: Can I use this for Python/Go/Ruby projects?**
Yes. The template is language-agnostic. Just update Tech Stack and Commands in CLAUDE.md.

## License

MIT — use however you want.

---

Made with Claude Code by [Ong Bo IT](https://ongboit.com) 🇻🇳
