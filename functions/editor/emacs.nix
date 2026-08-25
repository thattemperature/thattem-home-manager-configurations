{
  config,
  lib,
  pkgs,
  ...
}:

{

  config = lib.mkIf config.thattem.nixos.programming.enable (
    lib.mkIf config.thattem.home-manager.editor.enable {

      programs.emacs = {
        enable = true;
        package = pkgs.emacs31-pgtk;

        extraPackages =
          epkgs: with epkgs.thattemPackages; [
            (thattem-emacs-init.override (
              if config.thattem.nixos.special.enable then
                { special-auth-source = config.thattem.secrets.authinfo.path; }
              else
                { }
            ))
          ];

        extraConfig = ''
          (use-package thattem-emacs-init)
        '';
      };
    }
  );

}
