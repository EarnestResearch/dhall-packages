let JSON =
        https://prelude.dhall-lang.org/v12.0.0/JSON/Type sha256:5adb234f5868a5b0eddeb034d690aaba8cb94ea20d0d557003e90334fff6be3e
      ? https://prelude.dhall-lang.org/v12.0.0/JSON/Type

in  < SelfSigned :
          ../SelfSignedIssuerSpec/Type.dhall sha256:faa1246bbc6e81cce1042d862b326a8ae70fe1e41884479c5af197197d884efc
        ? ../SelfSignedIssuerSpec/Type.dhall
    | CA :
          ../CAIssuerSpec/Type.dhall sha256:cb8460d3520b283d4ecbe42cafaac81a6b9f99cf7019590adc26411799f7b156
        ? ../CAIssuerSpec/Type.dhall
    | Other : JSON
    >
