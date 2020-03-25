    \ ( appConfig
      :   ./AppConfig.dhall sha256:c610cee69a0557cfb4e4ec51de18a89201a4d7fc4ca2c9a6d4f2372f5c64d968
        ? ./AppConfig.dhall
      )
->  merge
      { DhallAppConfig =
            ./internal/makeDhallApp.dhall sha256:629a0bee0eeb262d9961cda6b5a2723032e936c9b2e9c65a5f53694484f76ff5
          ? ./internal/makeDhallApp.dhall
      , HelmAppConfig =
            ./internal/makeHelmApp.dhall sha256:a224db08bfd698cbdf3b4715bcfca7bf94dfdfa8c253158dc390c5b177fa1cca
          ? ./internal/makeHelmApp.dhall
      , KustomizeAppConfig =
            ./internal/makeKustomizeApp.dhall sha256:01861e0c982d50e79ce4dcad194dc85e235d3a04ec61cefb4337c94b5755fa13
          ? ./internal/makeKustomizeApp.dhall
      }
      appConfig
