{ runCommand }:
runCommand "dhall-1.29.0" {
  tarball = builtins.fetchTarball {
    name = "dhall-1.29.0-archive";
    url = https://github.com/dhall-lang/dhall-haskell/releases/download/1.29.0/dhall-1.29.0-x86_64-macos.tar.bz2;
    sha256 = "0impdrphm7wsm5i17dwyq12i1nrirq78n20kbjz68ahyrf1b8ld7";
  };
}
''
mkdir -p $out/bin
cp  $tarball/dhall $out/bin
''