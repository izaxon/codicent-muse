# Codicent file-first memory contract (v0.1)

One logbook per repo. Plain Markdown. Readable by any LLM with no tooling.
This file is the spec; if an entry disagrees with it, the entry is wrong.

Installed copy: upstream lives in `template/.codicent/CONTRACT.md` of the
codicent-muse kit. This repo dogfoods the kit, so both copies are kept
in sync by hand until the installer learns `--upgrade`.

## Layout

```text
.cod icent/               -> actually `.codicent/` (no space; split here only to dodge formatters)
  CONTRACT.md             # this spec
  logbook/
    index.md              # chronological list with one-line summaries + links
    YYYY-MM-DD-slug.md    # entries, one file each
    templates/
      decision.md         # ADR-style decision record
      tacit.md            # tacit knowledge note
      release.md          # release / rollout / PR log
```

## Filename rule

`YYYY-MM-DD-lowercase-slug.md`, e.g. `2026-10-29-adopt-codicent-memory.md`.
Date is the decision/event date, not the file-creation date. Never rename:
history is immutable; fix mistakes with a new entry linking back.

## Frontmatter (required, YAML)

```yaml
---
date: 2026-10-29
tags: [#log]            # at least one tag, always
related: []             # commit SHAs, PR/issue links, or related entry files
---
```

## Tag vocabulary

- `#log` — general logbook entry (default; every entry carries it or a subtype).
- `#decision` — a decision with options and rationale (use `decision.md`).
- `#tacit` — tacit knowledge: why things are the way they are (use `tacit.md`).
- `#todo` — commitment / follow-up discovered while working.
- `#release` — release, rollout, opened PR (use `release.md`).

Keep tags to this set. New tags need a `#decision` entry first.

## Index rule

`logbook/index.md` lists every entry, newest last, one line each:

`- [2026-10-29 — Adopt Codicent memory](2026-10-29-adopt-codicent-memory.md) — #decision — why we chose file-first.`

Whoever adds an entry updates the index in the same change.

## Agent rules

1. **Read before acting.** At session start, read `index.md`, then the entries
   relevant to the task. Never re-decide a recorded `#decision` without
   citing it.
2. **Write after acting.** Releases, rollouts, opened PRs, and user decisions
   get an entry immediately, in the same session.
3. **Agent-agnostic.** Entries must make sense to a different agent (or human)
   with no access to your session, tools, or model-specific schema. No
   embedded session IDs, tool dumps, or vendor-proprietary blocks.
4. **Traceability.** Link the commit/PR/issue in `related:` whenever one exists.

## Safety

Never store secrets, tokens, credentials, or personal data in the logbook.
The logbook is committed to git and readable by every future reader.
