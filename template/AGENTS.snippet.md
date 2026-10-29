<!-- Append this to your AGENTS.md (or CLAUDE.md / equivalent). -->
## Memory: Codicent logbook (file-first)

- This repo keeps its memory in `.codicent/logbook/` (spec: `.codicent/CONTRACT.md`).
- At session start, read `logbook/index.md`, then entries relevant to the task.
- Never re-decide a recorded `#decision` without citing it.
- Log releases, rollouts, opened PRs, and user decisions as new entries
  (`YYYY-MM-DD-slug.md` + frontmatter + index line) in the same session.
- Entries must be agent-agnostic plain Markdown: no session IDs, tool dumps,
  or vendor-proprietary blocks. Never store secrets.
