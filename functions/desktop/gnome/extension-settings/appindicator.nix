# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/shell/extensions/appindicator" = {
          icon-opacity = 255;
          icon-size = 32;
          legacy-tray-enabled = false;
          tray-pos = "center";
        };

      };
    }
  );

}
