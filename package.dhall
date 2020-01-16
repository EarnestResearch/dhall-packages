{ kubernetes =
      ./kubernetes/package.dhall sha256:7b9f076c5655f4a66536314b825cbc2902e3172fbd9b6aa834d1c01c12af7b6f
    ? ./kubernetes/package.dhall
, Prelude =
      https://prelude.dhall-lang.org/v12.0.0/package.dhall sha256:aea6817682359ae1939f3a15926b84ad5763c24a3740103202d2eaaea4d01f4c
    ? https://prelude.dhall-lang.org/v12.0.0/package.dhall
, util =
      ./util/package.dhall sha256:72497dc33a20aa8366d403379d22ff59a097b12c18546e7841b8aceb788ad655
    ? ./util/package.dhall
}
