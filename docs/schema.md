---
layout: page
title: "Schema (the memory contract)"
eyebrow: Schema
---

Source of truth: `template/.codicent/CONTRACT.md` (v0.1). This page
summarizes it for readers; on conflict, the contract wins.

## Layout

```text
.cod icent/                # (`.codicent/` — split only to dodge formatters)
  CONTRACT.md
  logbook/
    index.md               # every entry, newest last, one line each
    YYYY-MM-DD-slug.md     # entries; history is immutable, never rename
    templates/             # decision.md, tacit.md, release.md
```

## Frontmatter (every entry)

```yaml
---
date: 2026-10-29
tags: [#log]               # at least one tag, always
related: []                # SHAs, PR/issue links, related entries
---
```

## Tags

| Tag | Meaning | Template |
|---|---|---|
| `#log` | General entry (default) | — |
| `#decision` | Decision with options + rationale | `decision.md` |
| `#tacit` | Tacit knowledge | `tacit.md` |
| `#todo` | Commitment / follow-up | — |
| `#release` | Release, rollout, opened PR | `release.md` |

New tags require a `#decision` entry first. Keep the set small on purpose:
a shared vocabulary is what makes one logbook work across agents.

## Index line format

```markdown
- [2026-10-29 — Adopt Codicent memory](2026-10-29-adopt-codicent-memory.md) — #decision — why we chose file-first.
```

## Agent rules (short)

1. Read `index.md` first, then relevant entries, at session start.
2. Never re-decide a recorded `#decision` without citing it.
3. Log releases, PRs, and user decisions immediately, same session.
4. Entries stay agent-agnostic: no session IDs, tool dumps, vendor blocks.
5. No secrets, tokens, or personal data — the logbook is committed to git.

Next: [Tacit knowledge](tacit.md).
