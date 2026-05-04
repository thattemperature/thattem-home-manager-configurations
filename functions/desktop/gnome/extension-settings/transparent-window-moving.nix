# Generated via dconf2nix: https://github.com/nix-community/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/shell/extensions/transparent-window-moving" = {
          transition-time = mkDouble "0.5";
          transparent-on-moving = true;
          transparent-on-resizing = true;
          window-opacity = 128;
        };

      };
    }
  );

}
