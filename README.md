# Personal Development Environments

This repository contains my personal development templates using [devenv.sh](https://devenv.sh).

## Install locally

```bash
git clone 'https://github.com/pedrobrantes/dev.git' '${HOME}/.dev'
```

## Templates

The following templates are available:

- `rust`: Rust environment with Cargo, cargo-edit, and cargo-watch.
- `python`: Python environment with uv and essential native libraries.
- `node`: Node.js LTS environment with NPM.

## Usage

To initialize a new project using one of these templates, run:

```bash
# Replace <template> with rust, python, or node
devenv init --template github:pedrobrantes/dev#<template>
```

After initialization, allow direnv to set up the environment:

```bash
direnv allow
```

### Local Usage

If you are on the same machine where this repository is cloned:

```bash
devenv init --template path:/home/brantes/.dev#<template>
```
