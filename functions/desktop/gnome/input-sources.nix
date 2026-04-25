# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix

{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/desktop/input-sources" = {
      mru-sources = [ ];
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
