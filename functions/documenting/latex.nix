{
  config,
  lib,
  pkgs,
  ...
}:

{

  config = lib.mkIf config.thattem.nixos.programming.enable (
    lib.mkIf config.thattem.home-manager.documenting.enable {

      home.packages = with pkgs; [
        texliveFull
        texlab
      ];
    }
  );

}
