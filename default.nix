# Nix-shell script
# ----------------

with import <nixpkgs> {};

stdenv.mkDerivation rec {

  name = "block-diagram";

  env = buildEnv {
    name = name;
    paths = buildInputs;
  };

  buildInputs = [
    graphviz
    mscgen

    blockdiag
    nwdiag
    seqdiag
    actdiag

    rake
    feh

    # not needed anymore
    inotifyTools
  ];

  shellHook = ''
  '';

}
