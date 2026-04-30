{ config, lib, ... }:

{

  config = lib.mkIf config.thattem.home-manager.finding.enable {

    programs.fd.enable = true;
  };

}
