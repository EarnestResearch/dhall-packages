
let
  fetcher = { owner, repo, rev, sha256, ... }: builtins.fetchTarball {
    inherit sha256;
    url = "https://github.com/${owner}/${repo}/tarball/${rev}";
  };
  nixpkgsVersion = builtins.fromJSON (builtins.readFile ./pins/default-nixpkgs.json);
in
  import (fetcher {
    owner = "NixOS";
    repo = "nixpkgs";
    inherit (nixpkgsVersion) rev sha256;
  })