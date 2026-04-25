{ pkgs, ... }:

{

  home.packages = with pkgs; [
    nixos-generators
  ];

}
