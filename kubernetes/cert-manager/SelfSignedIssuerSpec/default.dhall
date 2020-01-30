let JSON =
        https://prelude.dhall-lang.org/v12.0.0/JSON/package.dhall sha256:843783d29e60b558c2de431ce1206ce34bdfde375fcf06de8ec5bf77092fdef7
      ? https://prelude.dhall-lang.org/v12.0.0/JSON/package.dhall

in  JSON.object
      ( toMap
          { selfSigned = JSON.object (toMap { ignoredField = JSON.string "" }) }
      )
