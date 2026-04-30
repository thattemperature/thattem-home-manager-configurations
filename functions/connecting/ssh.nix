{
  config,
  lib,
  ...
}:

{

  config = lib.mkIf config.thattem.home-manager.connecting.enable {

    programs.ssh = {
      enable = true;
      # Workaround: A temporary option which will be removed in the future
      enableDefaultConfig = false;
      matchBlocks = {

        default = {
          match = "all";
          compression = false;
          controlMaster = "auto";
          controlPath = "~/.ssh/master-%r@%n:%p";
          controlPersist = "no";
          hashKnownHosts = false;
          serverAliveCountMax = 4;
          serverAliveInterval = 15;
          userKnownHostsFile = "~/.ssh/known_hosts";
        };

        github = lib.hm.dag.entryBefore [ "default" ] {
          match = "host github.com";
          hostname = "ssh.github.com";
          port = 443;
          user = "git";
        };

        gitlab = lib.hm.dag.entryBefore [ "default" ] {
          match = "host gitlab.com";
          hostname = "altssh.gitlab.com";
          port = 443;
          user = "git";
        };
      };
    };
  };

}
