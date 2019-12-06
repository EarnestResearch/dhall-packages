with (import ./nixpkgs {});
let dhall = (import ./nix/dhall.nix) { inherit (pkgs) runCommand; };

in
mkShell {
  buildInputs = [
    dhall
    git
  ];
}