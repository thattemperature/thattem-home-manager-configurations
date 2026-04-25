{
  config,
  pkgs,
  ...
}:

{

  programs.emacs = {
    enable = true;
    package = pkgs.emacs-pgtk;

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
