# Generated via dconf2nix: https://github.com/nix-community/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/desktop/wm/keybindings" = {
          activate-window-menu = [ ];
          cycle-panels = [ ];
          cycle-panels-backward = [ ];
          maximize = [ ];
          move-to-workspace-left = [
            "<Super><Shift><Alt>Left"
            "<Control><Shift><Alt>Left"
          ];
          move-to-workspace-right = [
            "<Super><Shift><Alt>Right"
            "<Control><Shift><Alt>Right"
          ];
          switch-panels = [ ];
          switch-panels-backward = [ ];
          switch-to-workspace-left = [
            "<Super><Alt>Left"
            "<Control><Alt>Left"
          ];
          switch-to-workspace-right = [
            "<Super><Alt>Right"
            "<Control><Alt>Right"
          ];
          unmaximize = [ ];
        };

      };
    }
  );

}
