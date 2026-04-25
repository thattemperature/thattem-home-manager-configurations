{ config, ... }:

let

  home = config.home.homeDirectory;

in

{

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
