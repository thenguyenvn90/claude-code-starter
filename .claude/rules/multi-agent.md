# Multi-Agent Orchestration Rules

Applies when running parallel subagents. Per-change rules (AGENT.md) still apply inside every slice.

## Roles

- **Chair** — decomposes work, assigns slices, reviews integration. Does not implement.
- **Explorer** — read-only survey agent. Maps call sites, surfaces unknowns. Does not write.
- **Worker** — implements one bounded slice. Does not expand scope to "improve" adjacent code.
- **Verifier** — gates acceptance. Checks against criteria written *before* execution, not after.

## Before Starting

- Decompose into slices with clear edges and no overlapping write scopes.
- Write acceptance criteria per slice before dispatching workers. If you can't write the criteria, the slice isn't ready.
- Identify which slices can run in parallel (no shared write scope) vs. must run in sequence.

## Constraints

- No duplicate work across agents.
- No overlapping write scopes without explicit chair approval.
- Workers commit only files touched for their slice — no scribbling in adjacent files.
- Keep handoff notes current. Stale notes cause assumption drift faster than stale code.

## Closeout (a slice is done when all 5 exist)

1. Integrated result
2. Verification summary — what was checked and what wasn't
3. Commit id
4. Notes updated
5. Next recommended slice with rationale

If any are missing, the slice is still open.
