{ config, lib, ... }:

{

  config = lib.mkMerge [
    {
      programs.git.enable = true;
      programs.delta = {
        enable = true;
        enableGitIntegration = true;
      };
    }

    (lib.mkIf config.thattem-nixos.special.enable {

      programs.git = {
        signing = {
          format = "ssh";
          key = "~/.ssh/id_ed25519.pub";
          signByDefault = true;
        };
        settings = {
          user = {
            name = config.private.git.userName;
            email = config.private.git.userEmail;
          };
          pull.rebase = true;
          github.user = config.private.git.githubUser;
        };
      };
    })
  ];

}
