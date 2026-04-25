{
  config,
  lib,
  pkgs,
  ...
}:

let

  stardicts = config.thattem-packages.stardicts;

in

lib.mkIf (stardicts != null) {

  home.packages = with pkgs; [
    sdcv
  ];

  home.file.".stardict/dic/" = {
    source = config.lib.file.mkOutOfStoreSymlink "${stardicts}/share/stardict/dic/";
  };

}
