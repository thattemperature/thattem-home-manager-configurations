{

  description = "Thattemperature's home-manager configurations";

  inputs = {
    home-manager.url = "github:nix-community/home-manager";
    thattem-options.url = "github:thattemperature/thattem-nixos-options";
  };

  outputs =
    {
      self,
      home-manager,
      thattem-options,
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
                  thattem-options.nixosModules.default
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
                  thattem-options.nixosModules.default
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
