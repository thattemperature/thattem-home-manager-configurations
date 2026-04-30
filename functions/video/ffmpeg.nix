{
  config,
  lib,
  pkgs,
  ...
}:

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.video.enable {

      home.packages = with pkgs; [
        ffmpeg-full
      ];
    }
  );

}
