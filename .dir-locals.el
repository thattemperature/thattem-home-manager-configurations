((nil
  . ((eglot-workspace-configuration
      . (:nixd
         (:nixpkgs
          (:expr "import (builtins.getFlake (builtins.toString ./.)).inputs.nixpkgs { }")

          :formatting
          (:command [ "nixfmt" ])

          :options
          (:nixos
           (:expr "{ }")

           :home-manager
           (:expr "((builtins.getFlake (builtins.toString ./.)).inputs.nixpkgs.lib.nixosSystem { system = \"x86_64-linux\"; modules = [ (builtins.getFlake (builtins.toString ./.)).inputs.home-manager.nixosModules.default ]; }).options.home-manager.users.type.getSubOptions [ ]")

           :thattemperature
           (:expr "((builtins.getFlake (builtins.toString ./.)).inputs.nixpkgs.lib.evalModules { modules = [ (builtins.getFlake (builtins.toString ./.)).inputs.thattem-home-manager-options.nixosModules.default ]; }).options"))))))))
