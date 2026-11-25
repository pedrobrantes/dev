{
  description = "Personal development templates using Devenv";

  outputs = { self }: {
    templates = {
      base = {
        path = ./env/templates/base;
        description = "Minimal agent-ready environment with security git-hooks";
      };
      python = {
        path = ./env/templates/python;
        description = "Python development environment";
      };
      data = {
        path = ./env/templates/data;
        description = "Analytics Engineering & Data environment (Python, DuckDB, SQLFluff)";
      };
      agentic = {
        path = ./env/templates/agentic;
        description = "AI Agents, MCP, and LLM apps environment (Python, uv, evals)";
      };
      typescript = {
        path = ./env/templates/typescript;
        description = "TypeScript development environment (Node/Bun, Biome, Vitest)";
      };
      infra = {
        path = ./env/templates/infra;
        description = "Infrastructure as Code & DevOps environment (OpenTofu, ShellCheck, Hadolint, SOPS)";
      };
      rust = {
        path = ./env/templates/rust;
        description = "Rust development environment";
      };
      node = {
        path = ./env/templates/node;
        description = "Node.js development environment";
      };
      go = {
        path = ./env/templates/go;
        description = "Go development environment";
      };
      android = {
        path = ./env/templates/android;
        description = "Android development environment";
      };
      c = {
        path = ./env/templates/c;
        description = "C development environment";
      };
      postgres = {
        path = ./env/templates/postgres;
        description = "PostgreSQL development environment";
      };
      r = {
        path = ./env/templates/r;
        description = "R development environment";
      };
      javascript = {
        path = ./env/templates/javascript;
        description = "JavaScript development environment";
      };
    };
  };
}
