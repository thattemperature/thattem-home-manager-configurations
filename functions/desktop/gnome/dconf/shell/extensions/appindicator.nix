# Generated via dconf2nix: https://github.com/nix-community/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/shell/extensions/appindicator" = {
          compact-mode-enabled = true;
          icon-brightness = mkDouble "0.0";
          icon-contrast = mkDouble "0.0";
          icon-opacity = 255;
          icon-saturation = mkDouble "0.0";
          icon-size = 32;
          legacy-tray-enabled = false;
          tray-pos = "center";
        };

      };
    }
  );

}
