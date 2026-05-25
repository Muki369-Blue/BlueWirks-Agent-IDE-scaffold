# BlueWirks-Agent-IDE-scaffold
Production-grade scaffold for BlueWirks Agent IDE with local-first AI execution.

## Stack
- Tauri (desktop shell)
- Rust (core/system)
- React + TypeScript (UI)
- SQLite (local persistence)

## Quick start
```sh
pnpm install
pnpm tauri dev
```

## Layout
```
apps/
  ide/
  daemon/
src-tauri/
README.md
```

Everything runs local-first. No cloud dependencies are required.
