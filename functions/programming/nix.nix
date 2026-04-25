{ pkgs, ... }:

{

  home.packages = with pkgs; [
    # Workaround: update temporarily
    (haskell.lib.overrideCabal haskellPackages.dconf2nix (prev: {
      src = pkgs.fetchFromGitHub {
        owner = "thattemperature";
        repo = "dconf2nix";
        rev = "dd1dacf17ed97be48d459e6c72524872fd0e6ab6";
        hash = "sha256-P2jxSiq5aypnhk+J0W5dOqsoyjIX9l8Uz2xeRXBuSCc=";
      };
      libraryHaskellDepends = prev.libraryHaskellDepends ++ [
        pkgs.haskellPackages.utf8-string
      ];
    }))
    nixd
    nixfmt
  ];

}
