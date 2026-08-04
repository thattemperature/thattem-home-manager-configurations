{
  config,
  lib,
  pkgs,
}:

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.desktop.enable {

      gtk.font = {
        name = "Sarasa Gothic SC";
        package = pkgs.sarasa-gothic;
        size = 16;
      };
    }
  );

}
