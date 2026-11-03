# codicent-muse

File-first Codicent memory for coding repos. One logbook per repo, in plain
Markdown, in git — readable by any LLM with no special tooling, and never
stuck in one AI vendor's schema.

Built for the Meta Global AI Developer Hackathon. Muse Code first;
Codex, Claude, and Grok Code later — all sharing the same files.

## Adopt it in 3 steps (any repo)

```sh
cd your-repo
sh path/to/codicent-muse/install.sh        # or: install.ps1 -Target . on Windows
```

```powershell
cd your-repo; ..\codicent-muse\install.ps1
```

1. Run the installer (idempotent; never overwrites existing entries).
2. Append `template/AGENTS.snippet.md` to your `AGENTS.md` (or `CLAUDE.md`).
3. Commit `.codicent/` and push.

Full guide: the [docs site](docs/index.md) (`/docs`, GitHub Pages-ready).

## What lives here

| Path | Purpose |
|---|---|
| `install.sh` / `install.ps1` | Idempotent installers (sh / Windows) |
| `template/.codicent/CONTRACT.md` | The memory contract (spec) |
| `template/.codicent/logbook/` | Starter logbook: index, example, templates |
| `template/AGENTS.snippet.md` | 10-line agent instruction snippet |
| `docs/` | GitHub Pages site (quickstart, schema, tacit, CLI, agents) |
| `.codicent/` | This repo's own dogfooded logbook |
| `CLI-FINDINGS.md` | CLI research: docs verified by direct fetch; live runs still ahead |
| `HACKATHON.md` | Hackathon summary + demo script |

## Goals

- (a) One logbook as memory in coding repos.
- (b) Full history and traceability via the Codicent logbook.
- (c) No data stuck in any particular AI coding schema.
- (d) Full insight for any future LLM: 100% usability of repo history.
- (e) Tacit data stored in the logbook, not in people's heads.
- (f) Codicent as common memory for repos, ideas, projects.
- (g) Codicent as a first-class member for Muse Code users.

## GitHub Pages

Settings → Pages → Deploy from branch → `main`, folder `/docs`.
No build step: Jekyll-compatible Markdown with `docs/_config.yml`.

## License

[MIT](LICENSE) © Codicent Inside AB.
