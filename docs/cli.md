---
layout: page
title: "CLI & sync"
eyebrow: CLI
---

Two verified layers, one model: plain Markdown in git. Facts below were read
directly from the sources listed at the bottom (fetched 2026-10-30); no
`logbook` command has been executed here yet, so treat command behavior as
docs-verified, not run-verified.

## The three levels (vendor's model)

1. **Files — `logbook` CLI.** Single binary, zero services: no DB, no daemon,
   no port. Entries are Markdown files with YAML frontmatter, immutable
   (`--amend` writes a new version, full history kept).
2. **Local runtime — `logbook-server`.** One process: SQLite, MCP server
   (stdio + HTTP), REST API with OpenAPI schema, file inbox, optional public
   tunnel. MCP endpoint `/mcp` (default `http://localhost:5100`).
   For Claude Desktop, Cursor, any MCP client.
3. **Platform — Codicent** (`codicent.com`). Teams, apps, 100+ automation tags.

Same model all the way up: after `logbook login`, the CLI writes straight to
a Codicent project, and `data export`/`import` moves records between instances.

## Install (verified)

```bash
curl -fsSL https://logbook.codicent.ai/cli/install.sh | bash   # Linux / macOS
logbook init
```

```powershell
iwr https://logbook.codicent.ai/cli/install.ps1 | iex          # Windows
logbook init
```

- Windows installs to `%USERPROFILE%\.logbook` and adds it to your user PATH.
- Pin a version: `LOGBOOK_VERSION=0.8.0` (releases are tagged `logbook-v*`).
- Manual: `logbook-linux-x64`, `-linux-arm64`, `-osx-arm64`, `-osx-x64`,
  `-win-x64.exe` from the [Releases page](https://github.com/izaxon/codicent-logbook/releases).
- Server (level 2): `curl -fsSL https://logbook.codicent.ai/install.sh | bash`
  then `logbook-server` (Windows: same path with `install.ps1`).

## Everyday commands (verified from docs; run to confirm)

Entries — `init`, `add`, `get`, `list`, `find`, `history`, `status`:

```bash
logbook add "Deployed 1.12.2 to prod #deploy #prod"
echo "long notes..." | logbook add -t notes
logbook list -t deploy --from 2026-10-01
logbook find --body-only "rollback"
logbook history <id>
```

Tags come from `#markers` in the text or `-t`. `list` shows latest first
(`--from/--to`, `--start/--length`).

Structured records — `dataset`, `dataget`, `dataamend`, `datahide`,
`dataimport` (JSON key-values, `--filter k=v`,
`--format entry|json|csv|table|export`). Remote & chat — `login` (device
flow, stores `.logbook-session` in the current folder; afterwards every
command runs against that Codicent project), `logout`, `chat`, `chat list`,
`chat export`.

On-disk layout (CLI store): timestamped files under
`data/entries/YYYY/MM/DD/`, e.g.
`data/entries/2026/10/25/2026-10-25T131541Z__<id>.md`
(id abbreviated in vendor docs).

## How this kit relates (our position, not vendor docs)

- **`.codicent/logbook/`** (this kit): human-curated memory — `#decision`,
  `#tacit`, `#release` entries plus a hand-maintained index. Optimized for
  LLM session-start reading.
- **`logbook` CLI store** (`data/`): append-optimized, timestamped, versioned
  log. Optimized for capture and query.
- Both are Markdown + YAML in git: grepable, diffable, agent-agnostic.
- Recommended pairing today: run the kit installer AND `logbook init` in the
  same repo; capture with `logbook add`, curate decisions/releases into
  `.codicent/logbook/`.
- Open convergence question (`#todo`): single store vs. bridge/export between
  the two layouts. Deliberately undecided until the CLI is run for real.

## Sources (all fetched and read 2026-10-30)

- `https://logbook.codicent.ai/cli/` — CLI install, levels, commands.
- `https://raw.githubusercontent.com/izaxon/codicent-logbook/main/README.md`
  — server features, install, releases, repo scope (site + binaries, synced
  from the Codicent monorepo; no PRs to site files).

Next: [Agents](agents.md).
