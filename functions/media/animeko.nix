{
  config,
  lib,
  pkgs,
  ...
}:

{

  config = lib.mkIf config.thattem.nixos.advanced.enable (
    lib.mkIf config.thattem.home-manager.media.enable {

      home.packages = with pkgs; [
        animeko
      ];
    }
  );

}
