# Generated via dconf2nix: https://github.com/nix-community/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/shell/extensions/com/github/hermes83/compiz-windows-effect" = {
          friction = mkDouble "4.0";
          mass = mkDouble "50.0";
          resize-effect = true;
          speedup-factor-divider = mkDouble "12.0";
          spring-k = mkDouble "4.0";
          x-tiles = mkDouble "20.0";
          y-tiles = mkDouble "20.0";
        };

      };
    }
  );

}
