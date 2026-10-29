---
date: 2026-10-29
tags: [#log]
related: [2026-10-29-kit-v0-1.md]
---

# Smoke2 acceptance pass

First real-world verification of the kit, in sibling repo `codicent-smoke2`:

1. Ran `..\codicent-muse\install.ps1` — 6 files added under `.codicent/`.
2. Copied `template/AGENTS.snippet.md` to `AGENTS.md` (the "muse setup").
3. Fresh Muse Code session, prompt: *"Read the repo logbook and summarize it."*
4. Agent read index + example entry + contract and summarized correctly,
   including the session-start and write-after-acting rules.

Result: **PASS** — the file-first acceptance loop works with zero tooling.

## Observations (both minor, neither a kit bug)

- `install.ps1` invoked from `cmd.exe` silently does nothing; must run from
  PowerShell. Noted in `docs/quickstart.md`.
- The agent rendered logbook paths as `smoke2.codicent/...` (missing slash)
  in chat while reading the correct files — model rendering quirk, ignored.
