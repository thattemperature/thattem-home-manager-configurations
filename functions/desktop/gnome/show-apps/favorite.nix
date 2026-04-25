# Generated via dconf2nix: https://github.com/nix-community/dconf2nix

{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/shell" = {
      favorite-apps = [
        "org.gnome.Nautilus.desktop"
        "startcenter.desktop"
        "writer.desktop"
        "impress.desktop"
        "calc.desktop"
        "draw.desktop"
        "math.desktop"
        "base.desktop"
      ];
    };

  };
}
