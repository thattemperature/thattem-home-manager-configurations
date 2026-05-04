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
          stardicts
        ];

        home.sessionVariables = {
          STARDICT_DATA_DIR = "${stardicts}/share/stardict";
        };

      }
    )
  );

}
