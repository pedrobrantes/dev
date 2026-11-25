# Project Agent Rules (TypeScript)

## Stack
- Node.js LTS, `bun`, and `biome` (fast Rust formatter + linter).
- Environment managed declaratively via `devenv.nix` (`direnv allow`).

## Standardized Verification Commands
Always run `check` before concluding any code change:
- `fmt` — format code
- `lint` — run static analysis / linter
- `test` — run test suite
- `check` — run `fmt && lint && test`

## Workflow & Safety
- Never commit secrets, `.env` files, or private keys (`git-hooks` enforces secret/format checks on commit).
- Keep durable context in `AGENTS.md`, `PROGRESS.md`, and `HANDOFF.md` (for `agy` ↔ `opencode` handoffs).
- Prefer `biome` for formatting and linting and strict TypeScript (`tsc --noEmit`).
