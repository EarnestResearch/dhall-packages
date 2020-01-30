{ kubernetes =
      ./kubernetes/package.dhall sha256:cef9c573efe44c020b7b8872c1fb8cfa66b0f03d3963a686cc050dc42fb81b27
    ? ./kubernetes/package.dhall
, Prelude =
      https://prelude.dhall-lang.org/v12.0.0/package.dhall sha256:aea6817682359ae1939f3a15926b84ad5763c24a3740103202d2eaaea4d01f4c
    ? https://prelude.dhall-lang.org/v12.0.0/package.dhall
, util =
      ./util/package.dhall sha256:72497dc33a20aa8366d403379d22ff59a097b12c18546e7841b8aceb788ad655
    ? ./util/package.dhall
}
