{

  imports = [
    ../../basic
    ../../functions
  ];

  config = {
    thattem.home-manager = {
      browser.enable = true;
      compression.enable = true;
      connecting.enable = true;
      desktop.enable = true;
      dictionary.enable = true;
      documenting.enable = true;
      editor.enable = true;
      finding.enable = true;
      programming.enable = true;
      shell.enable = true;
      version.enable = true;
    };
  };

}
