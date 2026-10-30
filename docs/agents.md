---
layout: page
title: Agents
---

# Agents

One memory, many readers. The logbook files are agent-agnostic by contract:
plain Markdown + YAML frontmatter + the tag set in [Schema](schema.md).
No per-agent schemas, no embedded session state.

## Muse Code (supported now)

1. Install the kit ([Quickstart](quickstart.md)).
2. Append `template/AGENTS.snippet.md` to the repo's `AGENTS.md`.
3. Acceptance prompt: *"Read the repo logbook and summarize the latest
   decisions."* Passes with zero extra tooling.

Muse Code conventions honored: instruction file at repo root, no new
abstraction, verification via the repo's own checks plus the logbook.

## Codex / Claude / Grok Code (roadmap)

Same files, thin adapters — each agent only needs to know where to look.
Nothing in the kit is Muse-specific (no plugin, API, or MCP dependency),
so any file-reading CLI works; only the instruction filename differs.

| Agent | Instruction file | Status |
|---|---|---|
| Muse Code | `AGENTS.md` + snippet | ✅ Verified (smoke2 test) |
| Codex | `AGENTS.md` + snippet | Expected — run to confirm |
| Claude Code | `CLAUDE.md` + snippet | Expected — run to confirm |
| Grok Code | TBD — instruction file unverified | Needs research |

Each adapter ships with its own acceptance prompt run and a `#log` entry
recording the result. If an agent needs proprietary sidecar state, that
state stays outside `.codicent/` — the logbook never depends on it.
