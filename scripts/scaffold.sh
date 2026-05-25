#!/usr/bin/env bash
set -euo pipefail

APP_NAME=${1:-bluewirks-agent-ide}

if ! command -v pnpm >/dev/null 2>&1; then
  echo "pnpm is required" >&2
  exit 1
fi
if ! command -v node >/dev/null 2>&1; then
  echo "node is required" >&2
  exit 1
fi
if ! command -v cargo >/dev/null 2>&1; then
  echo "cargo (Rust) is required" >&2
  exit 1
fi

cat <<'TXT'
This repo includes the scaffold plan (README).
Run this script once to generate the actual Tauri+React+TS scaffold into this repo.

Because the create-tauri-app CLI changes over time, this script intentionally leaves
its prompts interactive: choose the Tauri template options you want (React + TS).
TXT

set -x
pnpm create tauri-app -- "$APP_NAME"
