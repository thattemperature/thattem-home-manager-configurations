{ config, lib, ... }:

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.browser.enable {

      programs.chromium.enable = true;
    }
  );

}
