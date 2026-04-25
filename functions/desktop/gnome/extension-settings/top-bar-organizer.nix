# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix

{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/shell/extensions/top-bar-organizer" = {
      center-box-order = [
        "ddterm"
        "dateMenu"
        "system-monitor@gnome-shell-extensions.gcampax.github.com"
      ];
      left-box-order = [ "activities" ];
      right-box-order = [
        "tiling-assistant@leleat-on-github"
        "screenRecording"
        "extension-list@tu.berry"
        "screenSharing"
        "dwellClick"
        "a11y"
        "keyboard"
        "appindicator-kstatusnotifieritem-tray-icon tray app main"
        "quickSettings"
      ];
    };

  };
}
