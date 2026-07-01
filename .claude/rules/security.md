# Security Rules

Applies to every change. When in doubt, stop and ask.

## Secrets
- Never hardcode API keys, tokens, passwords, or connection strings in source. Read them from environment
  variables or a secrets manager.
- Never write secrets into logs, error messages, or committed files. `.env` is git-ignored — keep it that way.
- Before committing, scan the diff for anything key-shaped. If a secret was ever committed, rotate it — removing
  it from the latest commit does not remove it from git history.
- See: https://ongboit.com/claude-code-anthropic-api-key-env-trap/

## Input & boundaries
- Validate and sanitize input at system boundaries (user input, external APIs, file uploads).
- Parameterize database queries — never build SQL/shell/paths by string concatenation of untrusted input.
- Check authorization on every protected action, not just the UI.

## AI-generated code
- Code that "looks right" can still be wrong on auth, access control, and edge cases. Test auth flows with an
  invalid token, an expired token, and a user without permission.
- Verify new dependencies are the real package (correct name, real maintainer, sane download count) — a typo can
  pull a malicious lookalike.
- For risky autonomy, limit what Claude can touch. See: https://ongboit.com/claude-code-sandbox/

## Human-in-the-loop (hard)
Always ask before: deleting files, `git push`, installing packages, changing configs, sending external requests.
