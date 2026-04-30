{ config, lib, ... }:

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      gtk.theme = null;
      gtk.gtk4.theme = null;
    }
  );

}
