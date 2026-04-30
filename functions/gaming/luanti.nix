{
  config,
  lib,
  pkgs,
  ...
}:

{

  config = lib.mkIf config.thattem.nixos.advanced.enable (
    lib.mkIf config.thattem.home-manager.gaming.enable {

      home.packages = with pkgs; [
        luanti
      ];
    }
  );

}
