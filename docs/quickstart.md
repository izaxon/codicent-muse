---
layout: page
title: Quickstart
---

# Quickstart

Add Codicent memory to any repo in about three minutes.

## 1. Run the installer

From your repo:

```sh
sh path/to/codicent-muse/install.sh
```

Windows (run from PowerShell — `cmd.exe` silently ignores `.ps1` files):

```powershell
..\codicent-muse\install.ps1
```

Or with an explicit target:

```sh
sh install.sh --target path/to/your-repo
```

Idempotent: re-running never overwrites existing entries or the contract.
You get `.codicent/CONTRACT.md`, a starter `logbook/` (index, one example
entry, three templates).

## 2. Teach your agent

Append `template/AGENTS.snippet.md` (from this kit) to your repo's
`AGENTS.md` (or `CLAUDE.md` / equivalent). Fifteen lines: where memory
lives, read-before-acting, write-after-acting.

## 3. Commit and use

```sh
git add .codicent AGENTS.md && git commit -m "Adopt Codicent file-first memory"
```

Then prompt your agent: *"Read the repo logbook and summarize the latest
decisions."* That sentence is the whole acceptance test.

## 4. (This kit only) Enable Pages

Settings → Pages → Deploy from branch → `main`, folder `/docs`.
The site is Jekyll-compatible Markdown; no build step.
