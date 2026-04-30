# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/shell/extensions/workspaces-indicator-by-open-apps" = {
          click-on-active-overview = false;
          click-on-focus-minimize = true;
          hide-activities-button = true;
          icons-group = "GROUP AND SHOW COUNT";
          icons-limit = 4;
          indicator-all-text = "0";
          indicator-round-borders = true;
          indicator-swap-position = false;
          middle-click-close-app = true;
          position-in-panel = "LEFT";
          position-index = 1;
          scroll-inverse = true;
          scroll-wraparound = true;
          size-app-icon = 32;
          size-labels = 24;
          spacing-label-left = 4;
          spacing-label-right = 4;
          spacing-workspace-left = 8;
          spacing-workspace-right = 8;
        };

      };
    }
  );

}
