# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/shell/extensions/com/github/hermes83/compiz-windows-effect" = {
          friction = 4.0;
          mass = 50.0;
          resize-effect = true;
          speedup-factor-divider = 12.0;
          spring-k = 4.0;
          x-tiles = 10.0;
          y-tiles = 10.0;
        };

      };
    }
  );

}
