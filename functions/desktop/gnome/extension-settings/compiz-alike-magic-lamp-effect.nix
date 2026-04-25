# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix

{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/shell/extensions/ncom/github/hermes83/compiz-alike-magic-lamp-effect" = {
      duration = 500.0;
      effect = "sine";
      x-tiles = 20.0;
      y-tiles = 20.0;
    };

  };
}
