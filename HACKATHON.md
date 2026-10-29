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
- `CLI-FINDINGS.md` — honest status of CLI verification (pending).

## Known gaps (judges welcome to poke)

- CLI/server sync commands unverified this session (sandbox down, no page
  fetch); `docs/cli.md` is a checklist, not commands. File-first core is
  unaffected — it needs zero CLI.
- Multi-agent adapters beyond Muse Code are documented, not yet test-run.
