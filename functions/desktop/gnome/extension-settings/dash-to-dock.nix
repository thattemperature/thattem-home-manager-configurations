# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/shell/extensions/dash-to-dock" = {
          always-center-icons = true;
          animation-time = 0.3;
          apply-custom-theme = true;
          apply-glossy-effect = true;
          autohide-in-fullscreen = true;
          background-color = "rgb(154,153,150)";
          background-opacity = 0.8;
          click-action = "previews";
          custom-background-color = false;
          custom-theme-customize-running-dots = false;
          custom-theme-shrink = true;
          customize-alphas = false;
          dash-max-icon-size = 64;
          disable-overview-on-startup = false;
          dock-fixed = false;
          dock-position = "LEFT";
          extend-height = true;
          height-fraction = 1.0;
          hide-delay = 0.0;
          intellihide = false;
          intellihide-mode = "ALL_WINDOWS";
          isolate-monitors = true;
          isolate-workspaces = true;
          max-alpha = 0.8;
          middle-click-action = "launch";
          multi-monitor = true;
          pressure-threshold = 400.0;
          running-indicator-dominant-color = false;
          running-indicator-style = "DEFAULT";
          scroll-action = "switch-workspace";
          shift-click-action = "launch";
          shift-middle-click-action = "minimize";
          show-mounts = false;
          show-mounts-network = false;
          show-mounts-only-mounted = false;
          show-trash = false;
          transparency-mode = "DEFAULT";
          unity-backlit-items = false;
        };

      };
    }
  );

}
