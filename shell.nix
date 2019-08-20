with import <nixpkgs> {};
let ghc = haskell.compiler.ghc864;
in haskell.lib.buildStackProject {
  inherit ghc;
  name = "myEnv";
  buildInputs = [ postgresql gmp libpqxx gnumake openssl zlib.dev zlib.out ];
}