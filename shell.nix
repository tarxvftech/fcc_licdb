{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  packages = with pkgs; [
    rlwrap
    sqlite
    readline
  ];

}


