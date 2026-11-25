# Project Agent Rules (Analytics Engineering & Data)

## Stack
- Python (`uv`), `duckdb`, `sqlfluff` (SQL linter/formatter), `ruff`, and `visidata`.
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
- Keep raw datasets out of Git (only commit small synthetic fixtures under `data/sample/`).
- Validate SQL models with `sqlfluff` before pushing.
