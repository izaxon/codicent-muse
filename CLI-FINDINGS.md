# CLI truth findings (Step 1)

Date: 2026-10-30. Status: **VERIFIED via direct fetch.**

## Method

HTTPS fetches with response bodies read in full (this session, network up):

- `https://logbook.codicent.ai/cli/` (200, full text extracted, tags stripped)
- `https://raw.githubusercontent.com/izaxon/codicent-logbook/main/README.md`
  (200; `master` returns identical content)
- `https://api.github.com/repos/izaxon/codicent-logbook` (200, repo metadata)

Earlier snippet-only status (2026-10-29, shell down) is superseded.

## Verified facts (see `docs/cli.md` for detail)

- `logbook` CLI: single binary, plain Markdown+YAML store, no DB/server;
  immutable versions; commands init/add/get/list/find/history/status,
  data* verbs, login/logout/chat; tags via `#markers` or `-t`.
- Install: `.../cli/install.sh|install.ps1` + `logbook init`
  (Windows: `%USERPROFILE%\.logbook` + PATH); releases `logbook-v*`
  (example `logbook-v0.8.0`); manual per-platform binaries.
- `logbook-server`: SQLite + MCP (stdio/HTTP) + REST/OpenAPI + file inbox +
  tunnel; `.../install.sh|install.ps1`, MCP at `/mcp` on `:5100`.
- Three levels (files → local runtime → platform), one data model;
  post-login CLI writes to a Codicent project; data export/import between
  instances. Repo hosts site + releases, synced from monorepo (no site PRs).

## Remaining gaps

- No `logbook` command has been EXECUTED here yet (`--help` output,
  `init`/`add`/`list` round-trip) — docs-verified only.
- `.codicent/logbook/` (curated, `YYYY-MM-DD-slug.md`) vs CLI store
  (`data/entries/...`, timestamped) convergence is undecided by design.
