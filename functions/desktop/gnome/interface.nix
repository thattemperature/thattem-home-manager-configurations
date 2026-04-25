# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix

{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/desktop/interface" = {
      clock-show-seconds = true;
      clock-show-weekday = true;
      document-font-name = "Sarasa UI SC 16";
      font-name = "Sarasa UI SC 16";
      monospace-font-name = "Sarasa Mono SC 16";
    };

  };
}
