# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/mutter/keybindings" = {
          toggle-tiled-left = [ ];
          toggle-tiled-right = [ ];
        };

      };
    }
  );

}
