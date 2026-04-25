# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix

{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/shell/extensions/appindicator" = {
      icon-opacity = 255;
      icon-size = 32;
      legacy-tray-enabled = false;
      tray-pos = "center";
    };

  };
}
