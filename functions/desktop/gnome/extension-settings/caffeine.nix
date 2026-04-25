# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix

{ lib, ... }:

with lib.hm.gvariant;

{
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
