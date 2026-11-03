# Hackathon: Codicent memory for coding repos

Meta Global AI Developer Hackathon entry. Suggested track: Indie developer
track (individual builder) — confirm at submission time.

## Problem

AI coding sessions evaporate. Decisions, tacit knowledge, and history get
stuck in vendor-specific schemas or vanish with the session. The next agent
— even a smarter one — starts from zero.

## What we built

A kit that gives every repo **one file-first logbook**: Markdown in git,
readable by any LLM with no tooling. Installer + memory contract +
templates + agent snippet + docs site. Muse Code now; Codex, Claude, and
Grok share the same files later. Codicent becomes the common memory for
repos, ideas, and projects — first-class for Muse Code users.

## Demo video

Submitted video (2:15, real runs): https://youtu.be/InMHNMl82-o.
How it was made: `DEMO-VIDEO.md`.

## Demo script (5 minutes)

1. **Empty repo.** Show a scratch repo with no memory; ask the agent a
   project-history question — it guesses.
2. **Install.** Run `install.sh` (or `install.ps1`); show `.codicent/`
   (contract, index, example, templates). Re-run to prove idempotence.
3. **Teach.** Append the snippet to `AGENTS.md`; commit.
4. **Read.** Fresh session: *"Read the repo logbook and summarize the
   latest decisions."* Agent cites real entries with dates and links.
5. **Write.** Make a change; agent appends a `#log` entry + index line in
   the same session. Show the diff. Point at the `/docs` Pages site.

## Repo map

- `README.md` — pitch + 3-step adopt flow.
- `install.sh` / `install.ps1` — the kit.
- `template/` — contract, starter logbook, agent snippet.
- `docs/` — Pages site. `.codicent/` — our own dogfooded memory.
- `CLI-FINDINGS.md` — CLI verified via docs fetch; live runs still ahead.
- `LICENSE` — MIT.

## Known gaps (judges welcome to poke)

- CLI install + commands verified via docs fetch (`docs/cli.md`); live `logbook` runs and `.codicent/` store convergence still ahead. File-first core needs zero CLI.
- Multi-agent adapters beyond Muse Code are documented, not yet test-run.
