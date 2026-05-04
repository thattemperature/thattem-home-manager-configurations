# Generated via dconf2nix: https://github.com/nix-community/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/shell/extensions/caffeine" = {
          enable-fullscreen = false;
          enable-mpris = false;
          nightlight-control = "never";
          restore-state = false;
          screen-blank = "never";
          show-indicator = "only-active";
          show-notifications = false;
          show-timer = true;
          show-toggle = true;
          trigger-apps-mode = "on-running";
          use-custom-duration = false;
          user-enabled = true;
        };

      };
    }
  );

}
