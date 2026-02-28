{
  description = "Personal development templates using Devenv";

  outputs = { self }: {
    templates = {
      rust = {
        path = ./env/templates/rust;
        description = "Rust development environment";
      };
      python = {
        path = ./env/templates/python;
        description = "Python development environment";
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
