{ config, lib, ... }:

{

  imports = [
    ./user-dirs.nix
  ];

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      xdg.enable = true;
    }
  );

}
