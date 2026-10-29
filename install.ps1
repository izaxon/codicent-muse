# codicent-muse installer (Windows): add file-first Codicent memory to any repo.
# Usage:
#   cd your-repo; ..\codicent-muse\install.ps1
#   .\install.ps1 -Target path\to\your-repo
# Idempotent: re-running never overwrites existing entries or contract.
param([string]$Target = ".")

$ErrorActionPreference = "Stop"
$src = Join-Path $PSScriptRoot "template\.codicent"
if (-not (Test-Path $src)) { throw "template not found: $src" }
$dst = Join-Path $Target ".codicent"
New-Item -ItemType Directory -Force -Path (Join-Path $dst "logbook\templates") | Out-Null

function Copy-IfMissing($from, $to) {
  if (Test-Path $to) { Write-Host "keep: $to" } else { Copy-Item $from $to; Write-Host "add:  $to" }
}

Copy-IfMissing (Join-Path $src "CONTRACT.md") (Join-Path $dst "CONTRACT.md")
Copy-IfMissing (Join-Path $src "logbook\index.md") (Join-Path $dst "logbook\index.md")
@("decision", "tacit", "release") | ForEach-Object {
  Copy-IfMissing (Join-Path $src "logbook\templates\$_.md") (Join-Path $dst "logbook\templates\$_.md")
}

$existing = Get-ChildItem (Join-Path $dst "logbook") -Filter "*.md" -File |
  Where-Object { $_.Name -ne "index.md" }
if ($existing) {
  Write-Host "keep: existing logbook entries untouched"
} else {
  Copy-Item (Join-Path $src "logbook\2026-10-29-first-entry.md") (Join-Path $dst "logbook")
  Write-Host "add:  logbook\2026-10-29-first-entry.md"
}

Write-Host ""
Write-Host "Next:"
Write-Host "  1. Append template/AGENTS.snippet.md to your AGENTS.md (or CLAUDE.md)."
Write-Host "  2. Commit .codicent/ and push."
