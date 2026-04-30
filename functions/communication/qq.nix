{
  config,
  lib,
  pkgs,
  ...
}:

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.communication.enable {

      home.packages = with pkgs; [
        qq
      ];
    }
  );

}
