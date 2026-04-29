{

  description = "Thattemperature's home-manager configurations";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    thattem-home-manager-options.url = "github:thattemperature/thattem-home-manager-options";
  };

  outputs =
    {
      self,
      home-manager,
      thattem-home-manager-options,
      ...
    }:

    {
      nixosModules = {

        default = {
          imports = [
            home-manager.nixosModules.default
          ];
          config = {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.thattemperature =
              { nixosConfig, ... }:
              {
                imports = [
                  thattem-home-manager-options.nixosModules.default
                  ./users/thattemperature
                ];
                config = {
                  home.username = nixosConfig.users.users.thattemperature.name;
                  home.homeDirectory = nixosConfig.users.users.thattemperature.home;
                  thattem = nixosConfig.thattem;
                };
              };
            home-manager.users.programmer =
              { nixosConfig, ... }:
              {
                imports = [
                  thattem-home-manager-options.nixosModules.default
                  ./users/programmer
                ];
                config = {
                  home.username = nixosConfig.users.users.programmer.name;
                  home.homeDirectory = nixosConfig.users.users.programmer.home;
                  thattem = nixosConfig.thattem;
                };
              };
          };
        };

      };
    };

}
