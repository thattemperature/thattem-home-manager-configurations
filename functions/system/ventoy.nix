{
  config,
  lib,
  pkgs,
  ...
}:

{

  config = lib.mkIf config.thattem.nixos.advanced.enable (
    lib.mkIf config.thattem.home-manager.system.enable {

      home.packages = with pkgs; [
        ventoy-full
      ];
    }
  );

}
