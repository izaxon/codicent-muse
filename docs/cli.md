# CLI & sync

The file-first logbook works with zero tooling: Markdown in git is the
memory. The Codicent runtime (server/CLI) is an **optional adapter** for
hosting, search, and sync — never the only copy.

## Status: verification pending

No CLI command on this page is verified yet. The research attempt is
recorded in `CLI-FINDINGS.md` (PowerShell sandbox down, no full-page fetch
available). **Do not publish commands here until they are verified.**

## How to verify (maintainer checklist)

1. Install the runtime per `https://logbook.codicent.ai/` (docs site).
2. Run the help commands and record exact output + version:
   `logbook-server --help` (and `logbook --help` if a separate CLI exists).
3. Confirm, at minimum:
   - how to point the server at an existing `.codicent/logbook/` tree,
   - how entries sync both ways (file ↔ server),
   - how `#log` / `#todo` tags map to server-side concepts.
4. Replace this notice with the verified commands, then log a `#decision`.

## Design rule (stable regardless of CLI shape)

Sync must never silently rewrite history: the file tree stays human-merged
through git, and the server is a view + index, not the master. Any sync
behavior that violates the [Schema](schema.md) immutability rule needs a
`#decision` entry before adoption.
