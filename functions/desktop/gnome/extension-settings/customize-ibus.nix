# Note: This file is partial auto generated

{ config, lib, ... }:

with lib.hm.gvariant;

let

  wallpapers = config.thattem.packages.wallpapers;
  wallpaper =
    if wallpapers != null then "${wallpapers}/share/backgrounds/thattem/BackGround-Alice.jpg" else "";

in

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/shell/extensions/customize-ibus" = {
          candidate-box-right-click-func = mkUint32 0;
          candidate-opacity = mkUint32 255;
          candidate-orientation = mkUint32 0;
          candidate-popup-animation = mkUint32 1;
          candidate-scroll-mode = mkUint32 1;
          candidate-still-position = mkUint32 0;
          custom-bg = wallpaper;
          custom-bg-dark = wallpaper;
          custom-bg-dark-mode = mkUint32 2;
          custom-bg-dark-repeat-mode = mkUint32 1;
          custom-bg-mode = mkUint32 2;
          custom-bg-repeat-mode = mkUint32 1;
          custom-font = "Sarasa UI SC 24";
          enable-auto-switch = false;
          enable-custom-theme = false;
          enable-custom-theme-dark = false;
          enable-orientation = false;
          fix-ime-list = false;
          indicator-custom-font = "Sarasa UI SC 24";
          indicator-left-click-func = mkUint32 0;
          indicator-opacity = mkUint32 255;
          input-indicator-animation = mkUint32 0;
          input-indicator-hide-time = mkUint32 1;
          input-indicator-not-on-single-ime = false;
          input-indicator-only-on-toggle = false;
          input-indicator-only-use-ascii = false;
          input-indicator-right-close = false;
          input-indicator-show-time = mkUint32 1;
          input-indicator-use-scroll = false;
          menu-extension-preference = false;
          menu-ibus-emoji = false;
          menu-ibus-exit = false;
          menu-ibus-preference = false;
          menu-ibus-restart = false;
          menu-ibus-version = false;
          remember-candidate-position = mkUint32 1;
          tray-source-switch-click-key = mkUint32 0;
          unkown-ascii-state = mkUint32 0;
          use-candidate-box-right-click = false;
          use-candidate-buttons = false;
          use-candidate-opacity = false;
          use-candidate-reposition = false;
          use-candidate-scroll = false;
          use-candidate-still = false;
          use-custom-bg = true;
          use-custom-bg-dark = true;
          use-custom-font = true;
          use-indicator-auto-hide = false;
          use-indicator-custom-font = false;
          use-indicator-left-click = false;
          use-indicator-opacity = false;
          use-indicator-show-delay = false;
          use-input-indicator = false;
          use-popup-animation = false;
          use-tray = true;
          use-tray-click-source-switch = false;
        };

      };
    }
  );

}
