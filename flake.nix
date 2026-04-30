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

    let

      nixos-modules-user-wrapper = import ./lib/nixos-modules-user-wrapper.nix {
        options-module = thattem-home-manager-options.nixosModules.default;
        users-path = ./users;
      };

    in

    {
      nixosModules = {

        default =
          { config, lib, ... }:
          {
            imports = [
              home-manager.nixosModules.default
            ];
            config = {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users = lib.mkMerge [

                (nixos-modules-user-wrapper "thattemperature")

                (lib.mkIf config.thattem.nixos.programming.enable (nixos-modules-user-wrapper "programmer"))
              ];

            };
          };

      };
    };

}
