---
date: 2026-10-29
tags: [#log, #decision]
related: [CLI-FINDINGS.md, template/.codicent/CONTRACT.md]
---

# Decision: file-first Markdown as the memory source of truth

## Context

Goal: one logbook as memory in coding repos, usable by any future LLM, with
no data stuck in one AI vendor's schema. The Codicent runtime CLI could not
be inspected this session (see `CLI-FINDINGS.md`), so its format and sync
semantics are unverified.

## Options considered

1. **CLI-native primary** — adopt the runtime's format as the master store,
   files as export. Rejected: unverified, and risks lock-in (violates goal c).
2. **File-first primary, CLI as adapter** — plain Markdown in git is the
   truth; server/sync is an optional view + index. Chosen.
3. **Dual-master** — files and server both writable, merged. Rejected:
   conflict semantics unknowable without the CLI spec; history must stay
   human-merged through git.

## Decision

Option 2. No kit file references an unverified CLI flag; `docs/cli.md`
carries a verification checklist instead of commands.

## Consequences

Easier: kit works today with zero dependencies; any agent reads it.
Harder: server search/sync story stays unwritten until CLI verification.
Revisit: after `logbook-server --help` is captured — confirm the sync
direction rule (file master, server view) against real behavior.
