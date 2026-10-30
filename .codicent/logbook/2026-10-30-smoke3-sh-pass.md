---
date: 2026-10-30
tags: [#log]
related: [2026-10-29-kit-v0-1.md, 2026-10-29-smoke2-acceptance-pass.md]
---

# Smoke3 sh pass

`install.sh` verified twice, independently:

1. User run (WSL): two consecutive runs — all `add` first, all `keep` second,
   existing entries untouched.
2. Agent run (Git `sh.exe`): two runs with file-hash comparison —
   identical trees, `SH IDEMPOTENCE: PASS`.

Both installers are now doubly verified (ps1: smoke2 + hash runs;
sh: smoke3 + hash runs). Gap 3 closed.
