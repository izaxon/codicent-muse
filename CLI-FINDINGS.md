# CLI truth findings (Step 1)

Date: 2026-10-29. Status: **PARTIAL — snippet-level only, full inspection pending.**

## What was attempted

- Target: `https://logbook.codicent.ai/cli/` (user-provided ref).
- Available tools this run: file read/search (repo is empty), `web_search`
  (snippets only, no full-page fetch), PowerShell (**down** — Windows sandbox
  ACL failure, retries timed out).
- Result: underlying page content could **not** be inspected.
  **No CLI flag is verified.**

## Snippet-level signals (not decision evidence)

- Runtime repo: `https://github.com/izaxon/codicent-logbook` — described as a
  "standalone, zero-dependency logbook runtime", single self-contained binary;
  per-platform `logbook-server-*` binaries under Releases; source synced from
  the Codicent monorepo `codicent-logbook/` project.
- Install hint seen in snippet:
  `iwr https://logbook.codicent.ai/install.ps1 | iex`, then `logbook-server`.
- Docs site: `https://logbook.codicent.ai/`

## Decision (per plan branch)

Markdown-primary file convention is the source of truth; CLI/server sync is an
optional adapter. **No kit file references an unverified CLI flag** —
`docs/cli.md` lists verification steps instead of commands.

## To close the gap (one command)

On a machine with the runtime installed, run
`logbook-server --help` (and `logbook --help` if a separate CLI exists),
paste the output, then update `docs/cli.md` with the verified commands.
