{ kubernetes =
      ./kubernetes/package.dhall sha256:22146f59a6fca418d5dca44d9ff15bdf138cec68e81926c87e97fb0dc231230e
    ? ./kubernetes/package.dhall
, Prelude =
      https://prelude.dhall-lang.org/v15.0.0/package.dhall sha256:6b90326dc39ab738d7ed87b970ba675c496bed0194071b332840a87261649dcd
    ? https://prelude.dhall-lang.org/v15.0.0/package.dhall
, util =
      ./util/package.dhall sha256:72497dc33a20aa8366d403379d22ff59a097b12c18546e7841b8aceb788ad655
    ? ./util/package.dhall
}
