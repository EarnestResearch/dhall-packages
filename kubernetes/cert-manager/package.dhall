{ Certificate =
      ./Certificate/package.dhall sha256:38c9e8ab8a0e5706725ffe9a8b300dfb0f6d5598d5429637ba0ca2b1c652be21
    ? ./Certificate/package.dhall
, CertificateSpec =
      ./CertificateSpec/package.dhall sha256:f0334b6587cb797a53b8a7b32344c5667803b924157857c59cc90e51ccb833c6
    ? ./CertificateSpec/package.dhall
, ClusterIssuer =
      ./ClusterIssuer/package.dhall sha256:a0b66fe89df1cbd2ad25ebfe139acd32e383d35e560e4f9dd09ed83bd9af7125
    ? ./ClusterIssuer/package.dhall
, TypesUnion =
      ./TypesUnion.dhall sha256:78b7a7a86f1375a0d0a6e9d849fe5d4ed8df454f52cb9474dabe5cecf9f99903
    ? ./TypesUnion.dhall
}
