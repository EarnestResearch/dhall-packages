{ kubernetes =
      ./kubernetes/package.dhall sha256:0e31269f0490a88e53a4d783cdefc657998a548e53594efaa453daf560afa5d5
    ? ./kubernetes/package.dhall
, Prelude =
      https://prelude.dhall-lang.org/v15.0.0/package.dhall sha256:6b90326dc39ab738d7ed87b970ba675c496bed0194071b332840a87261649dcd
    ? https://prelude.dhall-lang.org/v15.0.0/package.dhall
, util =
      ./util/package.dhall sha256:72497dc33a20aa8366d403379d22ff59a097b12c18546e7841b8aceb788ad655
    ? ./util/package.dhall
}
