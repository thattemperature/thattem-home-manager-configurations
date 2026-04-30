{
  config,
  lib,
  pkgs,
  ...
}:

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.system.enable {

      home.packages = with pkgs; [
        vulkan-tools
      ];
    }
  );

}
