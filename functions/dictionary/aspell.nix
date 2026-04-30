{
  config,
  lib,
  pkgs,
  ...
}:

{

  config = lib.mkIf config.thattem.nixos.programming.enable (
    lib.mkIf config.thattem.home-manager.dictionary.enable {

      home.packages = with pkgs; [
        aspell
        aspellDicts.en
      ];
    }
  );

}
