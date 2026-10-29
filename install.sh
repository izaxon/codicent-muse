#!/bin/sh
# codicent-muse installer: add file-first Codicent memory to any repo.
# Usage:
#   cd your-repo && sh path/to/codicent-muse/install.sh
#   sh install.sh --target path/to/your-repo
# Idempotent: re-running never overwrites existing entries or contract.
set -eu

TARGET="."
prev=""
for arg in "$@"; do
  if [ "$prev" = "--target" ]; then TARGET="$arg"; prev=""; continue; fi
  case "$arg" in
    --target=*) TARGET="${arg#--target=}" ;;
    --target) prev="--target" ;;
    -h|--help) echo "Usage: install.sh [--target DIR]"; exit 0 ;;
    *) echo "Unknown argument: $arg" >&2; exit 1 ;;
  esac
done

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
SRC="$SCRIPT_DIR/template/.codicent"
[ -d "$SRC" ] || { echo "template not found: $SRC" >&2; exit 1; }
mkdir -p "$TARGET/.codicent/logbook/templates"

copy_if_missing() { # $1=src $2=dst
  if [ -e "$2" ]; then echo "keep: $2"; else cp "$1" "$2"; echo "add:  $2"; fi
}

copy_if_missing "$SRC/CONTRACT.md" "$TARGET/.codicent/CONTRACT.md"
copy_if_missing "$SRC/logbook/index.md" "$TARGET/.codicent/logbook/index.md"
for t in decision tacit release; do
  copy_if_missing "$SRC/logbook/templates/$t.md" "$TARGET/.codicent/logbook/templates/$t.md"
done

existing=$(find "$TARGET/.codicent/logbook" -maxdepth 1 -name '*.md' ! -name 'index.md' | head -n 1 || true)
if [ -z "$existing" ]; then
  cp "$SRC/logbook/2026-10-29-first-entry.md" "$TARGET/.codicent/logbook/"
  echo "add:  $TARGET/.codicent/logbook/2026-10-29-first-entry.md"
else
  echo "keep: existing logbook entries untouched"
fi

echo ""
echo "Next:"
echo "  1. Append template/AGENTS.snippet.md to your AGENTS.md (or CLAUDE.md)."
echo "  2. Commit .codicent/ and push."
