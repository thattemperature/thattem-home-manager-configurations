{ config, lib, ... }:

let
  wallpapers = config.thattem.packages.wallpapers;
  wallpaper-light = if wallpapers != null
    then "${wallpapers}/share/backgrounds/thattem/FA-18C.png"
    else "";
  wallpaper-dark = if wallpapers != null
    then "${wallpapers}/share/backgrounds/thattem/FA-18C_RisingSquall.png"
    else "";
in

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable (
      lib.mkIf (wallpapers != null) {

        services.hyprpaper = {
          enable = true;

          settings = {
            preload = [
              wallpaper-light
              wallpaper-dark
            ];
            wallpaper = [
              {
                monitor = "";
                path = wallpaper-light;
              }
            ];
          };
        };

      }
    )
  );

}
