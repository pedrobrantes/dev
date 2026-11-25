# Project Agent Rules (AI Agents / MCP / LLM Apps)

## Stack
- Python (`uv`), `ruff`, `pytest`, and an `evals/` directory for prompt/tool evaluation.
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
- Unit tests (`test`) MUST mock LLM/API calls (zero paid network calls in CI or `check`).
- Put live model evaluations under `evals/` and run them explicitly via `eval-smoke`.
- Document required env vars in `.env.example` — never commit real keys in `.env`.
