{
  config,
  lib,
  pkgs,
  ...
}:

{

  config = lib.mkIf config.thattem.nixos.programming.enable (
    lib.mkIf config.thattem.home-manager.programming.enable {

      home.packages = with pkgs; [
        fennel-ls
        fnlfmt
      ];
    }
  );

}
