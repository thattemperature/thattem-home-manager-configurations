# Note: This file is partial auto generated

{
  config,
  lib,
  ...
}:

with lib.hm.gvariant;

let

  wallpapers = config.thattem.packages.wallpapers;

in

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable (

      lib.mkIf (wallpapers != null) {
        dconf.settings = {
          "org/gnome/desktop/background" = {
            picture-uri = "file://${wallpapers}/share/backgrounds/thattem/FA-18C.png";
            picture-uri-dark = "file://${wallpapers}/share/backgrounds/thattem/FA-18C.png";
          };

        };
      }
    )
  );

}
