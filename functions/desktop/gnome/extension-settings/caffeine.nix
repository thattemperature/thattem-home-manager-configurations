# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/shell/extensions/caffeine" = {
          enable-fullscreen = false;
          nightlight-control = "never";
          screen-blank = "never";
          show-indicator = "only-active";
          show-notifications = false;
          show-timer = false;
        };

      };
    }
  );

}
