{ config, lib, ... }:

let

  home = config.home.homeDirectory;

in

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      gtk.gtk3.bookmarks = [
        "file://${home}/Documents"
        "file://${home}/Downloads"
        "file://${home}/Games"
        "file://${home}/Music"
        "file://${home}/Pictures"
        "file://${home}/Projects"
        "file://${home}/Sync"
        "file://${home}/Videos"
      ];
    }
  );

}
