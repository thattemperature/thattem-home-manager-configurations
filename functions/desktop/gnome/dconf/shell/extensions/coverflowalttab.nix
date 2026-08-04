# Generated via dconf2nix: https://github.com/nix-community/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/shell/extensions/coverflowalttab" = {
          animation-time = mkDouble "0.5";
          bind-to-switch-applications = true;
          bind-to-switch-windows = true;
          coverflow-window-angle = mkDouble "90.0";
          coverflow-window-offset-width = mkDouble "50.0";
          current-workspace-only = "current";
          dim-factor = mkDouble "0.5";
          easing-function = "ease-in-out-cubic";
          enforce-primary-monitor = false;
          hide-panel = true;
          highlight-mouse-over = false;
          highlight-use-theme-color = true;
          icon-add-remove-effects = "Fade and Scale";
          icon-style = "Attached";
          invert-swipes = false;
          offset = 0;
          overlay-icon-opacity = mkDouble "0.5";
          overlay-icon-size = mkDouble "256.0";
          perspective-correction-method = "Move Camera";
          position = "Bottom";
          preview-scaling-factor = mkDouble "0.8";
          preview-to-monitor-ratio = mkDouble "0.5";
          raise-mouse-over = false;
          randomize-animation-times = true;
          switch-per-monitor = true;
          switcher-background-color = mkTuple [
            (mkDouble "1.0")
            (mkDouble "1.0")
            (mkDouble "1.0")
          ];
          switcher-looping-method = "Carousel";
          switcher-style = "Coverflow";
          use-glitch-effect = false;
          use-tint = false;
        };

      };
    }
  );

}
