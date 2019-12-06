{ runCommand }:
runCommand "dhall-1.28.0" {
  tarball = builtins.fetchTarball {
    name = "dhall-1.28.0-archive";
    url = https://github.com/dhall-lang/dhall-haskell/releases/download/1.28.0/dhall-1.28.0-x86_64-macos.tar.bz2;
    sha256 = "1mc34j7gw74679560bfzkgvii39rnq5825z4i7pbljs9swv9jpqh";
  };
}
''
mkdir -p $out/bin
cp  $tarball/dhall $out/bin
''