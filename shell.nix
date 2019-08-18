with import (fetchTarball https://github.com/NixOS/nixpkgs/archive/3a17a52a2a5f9d7077c1c2273e49062c11e000d4.tar.gz) {};
let ghc = haskell.compiler.ghc864;
in haskell.lib.buildStackProject {
  inherit ghc;
  name = "myEnv";
  buildInputs = [ postgresql gmp libpqxx gnumake openssl zlib.dev zlib.out ];
}