# Personal Development Environments

This repository contains my personal, agent-ready development templates using [devenv.sh](https://devenv.sh).

Every template includes:
- **`devenv.nix`** with standardized verification scripts (`fmt`, `lint`, `test`, `check`) and security `git-hooks` (`detect-private-key`, `check-added-large-files`, whitespace/EOF checks, plus language linters).
- **`AGENTS.md`** with stack rules and verification commands for AI coding agents (`agy`, `opencode`, etc.).
- **`PROGRESS.md`** for durable cross-session state.
- **`.gitignore`** blocking `.env`, private keys, `.devenv/`, and language artifacts.

## Install locally

```bash
git clone 'https://github.com/pedrobrantes/dev.git' "${HOME}/.dev"
```

## Templates

- `base`: Minimal agent-ready workspace (ShellCheck + security `git-hooks`, no heavy compilers).
- `python`: Python environment with `uv`, `ruff`, and `pytest`.
- `data`: Analytics Engineering environment with Python (`uv`), `duckdb`, `sqlfluff`, `ruff`, and `visidata`.
- `agentic`: AI Agents / MCP / LLM apps environment with Python (`uv`), `ruff`, `pytest`, `.env.example`, and `evals/`.
- `typescript`: TypeScript environment with Node.js, `bun`, and `biome`.
- `infra`: IaC & DevOps environment with `opentofu`, `tflint`, `shellcheck`, `hadolint`, and `sops`.
- `rust`: Rust environment with Cargo, `rustfmt`, `clippy`, `cargo-edit`, and `cargo-watch`.
- `node`: Node.js LTS environment with NPM.
- `go`: Go development environment with `govet`, `gotest`, and `golangci-lint`.
- `android`: Android / Flutter development environment.
- `c`: C development environment with CMake, Ceedling, and `clang-tidy`.
- `postgres`: PostgreSQL + PostGIS development environment.
- `r`: R development environment with Radian.
- `javascript`: JavaScript environment with NPM auto-install.

## Usage

Initialize a new project using one of these templates:

```bash
# Replace <template> with any template listed above
devenv init --template github:pedrobrantes/dev#<template>
direnv allow
```

### Local Usage

If you are on the same machine where this repository is cloned:

```bash
devenv init --template path:/home/brantes/.dev#<template>
direnv allow
```
