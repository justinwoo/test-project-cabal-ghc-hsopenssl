{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "my-shell";

  nativeBuildInputs = with pkgs; [
    cabal-install
    ghc
  ];

  buildInputs = with pkgs; [
    openssl
    pcre
  ];
}
