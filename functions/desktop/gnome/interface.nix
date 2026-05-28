# Generated via dconf2nix: https://github.com/nix-community/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/desktop/interface" = {
          clock-show-seconds = true;
          clock-show-weekday = true;
          document-font-name = "Sarasa UI SC 16";
          font-name = "Sarasa UI SC 16";
          gtk-enable-primary-paste = true;
          monospace-font-name = "Sarasa Mono SC 16";
        };

      };
    }
  );

}
