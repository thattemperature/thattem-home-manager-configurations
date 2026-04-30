{ config, lib, ... }:

{

  config = lib.mkIf config.thattem.nixos.desktop.enable (
    lib.mkIf config.thattem.home-manager.password.enable {

      programs.keepassxc = {
        enable = true;
        settings = {
          Browser.Enabled = true;
          Browser.UpdateBinaryPath = false;
          Security.IconDownloadFallback = true;
        };
      };
    }
  );

}
