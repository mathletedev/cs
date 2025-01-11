{ pkgs ? import <nixpkgs> { }, lib ? pkgs.lib }:

pkgs.mkShell rec {
  buildInputs = with pkgs; [
    wget
    xspim
  ];

  shellHook = ''
    export PATH=$PWD/bin:$PATH
  '';
}
