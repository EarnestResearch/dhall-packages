let JSON =
        https://prelude.dhall-lang.org/v15.0.0/JSON/package.dhall sha256:1b02c5ff4710f90ee3f8dc1a2565f1b52b45e5317e2df4775307e2ba0cadcf21
      ? https://prelude.dhall-lang.org/v15.0.0/JSON/package.dhall

in  { selfSigned = JSON.object (toMap { ignoredField = JSON.string "" }) }
