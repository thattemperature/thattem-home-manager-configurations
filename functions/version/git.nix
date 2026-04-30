{ config, lib, ... }:

{

  config = lib.mkIf config.thattem.home-manager.version.enable (
    lib.mkMerge [

      {
        programs.git.enable = true;
        programs.delta = {
          enable = true;
          enableGitIntegration = true;
        };
      }

      (lib.mkIf config.thattem.nixos.special.enable {

        programs.git = {
          signing = {
            format = "ssh";
            key = "~/.ssh/id_ed25519.pub";
            signByDefault = true;
          };
          settings = {
            user = {
              name = config.thattem.private.git.userName;
              email = config.thattem.private.git.userEmail;
            };
            pull.rebase = true;
            github.user = config.thattem.private.git.githubUser;
          };
        };
      })

    ]
  );

}
