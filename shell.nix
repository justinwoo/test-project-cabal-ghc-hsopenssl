{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "my-shell";

  buildInputs = with pkgs; [
    cabal-install
    ghc
    openssl
    pcre
  ];
}
