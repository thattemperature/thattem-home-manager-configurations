# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix

{ lib, ... }:

with lib.hm.gvariant;

{
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
