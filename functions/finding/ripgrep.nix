{ config, lib, ... }:

{

  config = lib.mkIf config.thattem.home-manager.finding.enable {

    programs.ripgrep.enable = true;
  };

}
