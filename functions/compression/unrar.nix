{
  config,
  lib,
  pkgs,
  ...
}:

{

  config = lib.mkIf config.thattem.home-manager.compression.enable {

    home.packages = with pkgs; [
      unrar-free
    ];
  };

}
