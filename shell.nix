let 
  sources = import ./nix/sources.nix {};
  pkgs = import sources.nixpkgs {};

in with pkgs; mkShell {
  buildInputs = [
    haskellPackages.dhall_1_31_1
    git
  ];
}