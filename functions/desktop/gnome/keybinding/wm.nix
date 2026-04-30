# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/desktop/wm/keybindings" = {
          activate-window-menu = [ "<Alt><Super>space" ];
          cycle-panels = [ ];
          cycle-panels-backward = [ ];
          maximize = [ ];
          switch-panels = [ ];
          switch-panels-backward = [ ];
          unmaximize = [ ];
        };

      };
    }
  );

}
