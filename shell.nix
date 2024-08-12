let
  pkgs = import <nixpkgs> { };
in
pkgs.mkShell {
  packages = with pkgs; [
    openssl
    openssl.dev
    pkg-config
    protobuf
    # libpqxx
    postgresql.lib
  ];
}
