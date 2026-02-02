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
    };
  };
}
