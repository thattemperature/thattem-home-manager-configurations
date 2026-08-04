# Generated via dconf2nix: https://github.com/nix-community/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/shell/extensions/ncom/github/hermes83/compiz-alike-magic-lamp-effect" = {
          duration = mkDouble "500.0";
          effect = "sine";
          x-tiles = mkDouble "20.0";
          y-tiles = mkDouble "20.0";
        };

      };
    }
  );

}
