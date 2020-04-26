let JSON =
        https://prelude.dhall-lang.org/v15.0.0/JSON/Type sha256:40edbc9371979426df63e064333b02689b969c4cfbbccfa481216d2d1a6e9759
      ? https://prelude.dhall-lang.org/v15.0.0/JSON/Type

in  < SelfSigned :
          ../SelfSignedIssuerSpec/Type.dhall sha256:b548f33e266334167559d1546399953bca2c0d5e6b5df7bdbcfe380227789501
        ? ../SelfSignedIssuerSpec/Type.dhall
    | CA :
          ../CAIssuerSpec/Type.dhall sha256:cb8460d3520b283d4ecbe42cafaac81a6b9f99cf7019590adc26411799f7b156
        ? ../CAIssuerSpec/Type.dhall
    | Other : JSON
    >
