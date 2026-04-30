{ config, lib, ... }:

{

  config = lib.mkIf config.thattem.nixos.programming.enable (
    lib.mkIf config.thattem.home-manager.programming.enable {

      programs.direnv = {
        enable = true;
        nix-direnv.enable = true;
      };
    }
  );

}
