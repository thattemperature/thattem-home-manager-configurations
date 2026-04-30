{
  config,
  lib,
  pkgs,
  ...
}:

{

  config = lib.mkIf config.thattem.home-manager.finding.enable {

    home.packages = with pkgs; [
      tree
    ];
  };

}
