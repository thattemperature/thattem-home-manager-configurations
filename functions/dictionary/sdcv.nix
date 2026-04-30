{
  config,
  lib,
  pkgs,
  ...
}:

let

  stardicts = config.thattem.packages.stardicts;

in

{

  config = lib.mkIf config.thattem.nixos.programming.enable (
    lib.mkIf config.thattem.home-manager.dictionary.enable (

      lib.mkIf (stardicts != null) {

        home.packages = with pkgs; [
          sdcv
        ];

        home.file.".stardict/dic/" = {
          source = config.lib.file.mkOutOfStoreSymlink "${stardicts}/share/stardict/dic/";
        };

      }
    )
  );

}
