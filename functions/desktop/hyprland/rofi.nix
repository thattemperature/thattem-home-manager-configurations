{ config, lib, pkgs, ... }:

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      programs.rofi = {
        enable = true;
        package = pkgs.rofi-wayland;
        font = "Sarasa UI SC 14";
        theme = "Arc-Dark";
        extraConfig = {
          modi = "drun,window";
          show-icons = true;
          icon-theme = "MoreWaita";
          drun-display-format = "{name}";
          display-drun = "Apps";
          display-window = "Windows";
          disable-history = false;
          sort = true;
          matching = "fuzzy";
        };
      };

    }
  );

}
