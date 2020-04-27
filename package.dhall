{ kubernetes =
      ./kubernetes/package.dhall sha256:7f30c2a48e833c348dc7a5dd5435fe09371905ea5f046abac52960dde4fc8c56
    ? ./kubernetes/package.dhall
, Prelude =
      https://prelude.dhall-lang.org/v15.0.0/package.dhall sha256:6b90326dc39ab738d7ed87b970ba675c496bed0194071b332840a87261649dcd
    ? https://prelude.dhall-lang.org/v15.0.0/package.dhall
, util =
      ./util/package.dhall sha256:72497dc33a20aa8366d403379d22ff59a097b12c18546e7841b8aceb788ad655
    ? ./util/package.dhall
}
