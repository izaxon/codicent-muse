# Codicent memory for coding repos

Every coding repo gets **one logbook**: plain Markdown, in git, next to the
code. Any agent — Muse Code today, Codex, Claude, Grok tomorrow — reads the
same files. No vendor schema, no lock-in, no lost context.

- New here? Start with [Quickstart](quickstart.md).
- Want the rules? Read the [Schema](schema.md).
- Capturing know-how? See [Tacit knowledge](tacit.md).
- Running the server/CLI? See [CLI & sync](cli.md) (verification pending).
- Using another agent? See [Agents](agents.md).

## Why file-first

AI sessions evaporate. What survives is what's in the tree: decisions with
rationale, tacit knowledge, release history — all linked to commits and PRs.
A future LLM with only `git clone` and a prompt gets 100% of the history.

## Ten-second shape

```text
.cod icent/logbook/        # (`.codicent/` — no space; split only to dodge formatters)
  index.md                 # chronological list, newest last
  2026-10-29-why-x.md      # one file per entry, frontmatter + tags
  templates/               # decision / tacit / release starters
```
