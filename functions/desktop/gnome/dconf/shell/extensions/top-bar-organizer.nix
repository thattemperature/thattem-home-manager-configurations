# Generated via dconf2nix: https://github.com/nix-community/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

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
            "screenSharing"
            "dwellClick"
            "a11y"
            "extension-list@tu.berry"
            "keyboard"
            "appindicator-kstatusnotifieritem-tray-icon tray app clash-verge-rev-tray"
            "quickSettings"
          ];
        };

      };
    }
  );

}
