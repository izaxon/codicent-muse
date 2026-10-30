---
date: 2026-10-30
tags: [#decision, #log]
related: [2026-10-29-kit-v0-1.md]
---

# Docs site redesign: Codicent brand, vision first

## Decision

The GitHub Pages site (`/docs`) now carries the Codicent brand instead of
the generic dark minima theme, and leads with the vision rather than the
pain point.

Options considered:

1. Keep the dark hackathon look (near-black + Meta blue) and polish it.
2. Codicent brand in focus (codicent.ai palette and type).
3. A new standalone look for the kit.

Chosen: **2**. Rationale (Johan, 2026-10-30): the primary reader is the
hackathon jury, Codicent should be visible as the product behind the kit,
and the hero should tell the bigger story ("The shared memory for repos,
ideas and projects") with the kit as step one.

## What changed

- `docs/_config.yml`: minima dropped; site nav, repo and Codicent URLs
  live in config. `jekyll-relative-links` keeps `.md` links working.
- `docs/_layouts/{default,home,page}.html`, `docs/_includes/*`: own
  layouts. Docs pages get a sidebar, eyebrow, lead and prev/next pager
  driven by `site.nav`.
- `docs/assets/main.scss`: codicent.ai tokens. Ground `#020205` /
  `#0A0618`, accent `#7C3AED`, gold `#F0A500`, Poppins display, Inter
  body, JetBrains Mono code. Logo mark as inline SVG.
- `docs/index.html` replaces `index.md`: hero + terminal card, fact strip,
  problem, three steps + schema/tree, what you get, verified checklist
  (honest about CLI and multi-agent gaps) + agents table, five-minute
  demo path for judges, vision band, footer.
- Docs pages lost their duplicate `# H1` (layout renders `page.title`).

## Verification

- Built with GitHub's own `jekyll-build-pages:v1.0.13` image: clean build,
  all six pages and `assets/main.css` emitted, links resolve under
  `/codicent-muse/`.
- Desktop (1360) reviewed via Edge headless screenshots; mobile (375)
  checked in a browser: no horizontal overflow on home or docs pages.

Design mockup (private canvas): https://claude.ai/artifact/NMTebg4DVEYwKVkX7geEGF
