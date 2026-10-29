# Tacit knowledge

Explicit knowledge lives in code and docs. Tacit knowledge — *why* the code
is this way, what was tried and failed, which constraint is load-bearing —
lives in heads and evaporates between sessions. The logbook's job is to
catch it. Tag: `#tacit`. Template: `logbook/templates/tacit.md`.

## What makes a good tacit note

- **One surprise per note.** "The retry count is 3 because the vendor
  rate-limits at 4" beats a design essay.
- **Why, not what.** The code shows what; the note records the reasoning
  that a future reader cannot reconstruct.
- **Expiry hint.** Say how to check it is still true (a command, a file,
  a person). Tacit notes rot; verifiable ones get refreshed instead of
  trusted blindly.

## When to write one

- You ask the user "why is this like this?" and get an answer.
- You discover a constraint by failing (flaky test, quota, platform quirk).
- You choose the non-obvious option and the rationale fits in 5 lines.

## Example

```markdown
---
date: 2026-10-29
tags: [#log, #tacit]
related: [src/retry.py]
---

# Tacit: vendor rate limit shapes retry policy

## What everyone on the project knows (but never wrote down)

Max 3 retries, 500 ms apart. 4+ triggers HTTP 429 for an hour.

## Why it is this way

Found out 2026-10-20 after an outage; vendor support confirmed the
per-key burst window. Backoff beyond 3x gains nothing.

## How to verify it is still true

`grep -r max_retries src/`; re-check vendor status page quota section.
```
