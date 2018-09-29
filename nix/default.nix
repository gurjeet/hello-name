with (import <nixpkgs> {});

derivation {
    name = "hello-name";
    builder = "${bash}/bin/bash";
    args = [ ./builder.sh ];

    /*
     * TODO: Turn this line into `inherit gcc` when darwin-nix fixes the
     * problem and addresses the following issue:
     *     https://github.com/NixOS/nix-pills/issues/35
     */
    gcc = stdenv.cc;

    inherit coreutils;
    src = ./../main.c;
    system = builtins.currentSystem;
}
