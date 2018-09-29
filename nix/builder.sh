export PATH="$coreutils/bin:$gcc/bin"
mkdir $out
# TODO: Replace `cc` below with `gcc`, after the following issue is addressed:
#     https://github.com/NixOS/nix-pills/issues/35
cc -o $out/hello-name $src
