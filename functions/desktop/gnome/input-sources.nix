# Generated via dconf2nix: https://github.com/nix-community/dconf2nix

{ config, lib, ... }:

with lib.hm.gvariant;

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      dconf.settings = {
        "org/gnome/desktop/input-sources" = {
          mru-sources = [
            (mkTuple [
              "ibus"
              "rime"
            ])
          ];
          per-window = false;
          show-all-sources = false;
          sources = [
            (mkTuple [
              "ibus"
              "rime"
            ])
          ];
          xkb-options = [ ];
        };

      };
    }
  );

}
