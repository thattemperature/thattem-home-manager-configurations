{ pkgs, ... }:

{

  home.packages = with pkgs; [
    llvmPackages.clang-tools
  ];

  home.extraDependencies = with pkgs; [
    cmake
    pkg-config
  ];

}
