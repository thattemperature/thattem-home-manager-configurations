# Generated via dconf2nix: https://github.com/nix-community/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/shell/extensions/workspaces-indicator-by-open-apps" = {
          apps-all-desaturate = false;
          apps-inactive-effect = "REDUCE OPACITY";
          apps-minimized-effect = "REDUCE OPACITY";
          apps-show-window-title = false;
          apps-symbolic-icons = false;
          click-on-active-overview = false;
          click-on-focus-minimize = false;
          hide-activities-button = true;
          icons-group = "GROUP AND SHOW COUNT";
          icons-limit = 2;
          indicator-all-text = "|";
          indicator-background-padding = 4;
          indicator-color = "rgb(255,255,255)";
          indicator-height-scale = mkDouble "1.0";
          indicator-hide-empty = false;
          indicator-round-borders = true;
          indicator-show-active-workspace = true;
          indicator-show-background = false;
          indicator-show-focused-app = true;
          indicator-show-indexes = true;
          indicator-swap-position = false;
          indicator-text-use-theme-color = false;
          indicator-use-custom-names = false;
          log-apps-id = false;
          middle-click-close-app = true;
          position-in-panel = "LEFT";
          position-index = 1;
          scroll-enable = true;
          scroll-inverse = true;
          scroll-wraparound = true;
          size-app-icon = 32;
          size-labels = 24;
          spacing-app-left = 0;
          spacing-app-right = 0;
          spacing-label-bottom = 0;
          spacing-label-left = 4;
          spacing-label-right = 4;
          spacing-label-top = 0;
          spacing-workspace-left = 8;
          spacing-workspace-right = 8;
        };

      };
    }
  );

}
