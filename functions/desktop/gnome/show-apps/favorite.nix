# Generated via dconf2nix: https://github.com/nix-community/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

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
  );

}
