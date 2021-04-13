    \ ( appConfig
      :   ./AppConfig.dhall sha256:c610cee69a0557cfb4e4ec51de18a89201a4d7fc4ca2c9a6d4f2372f5c64d968
        ? ./AppConfig.dhall
      )
->  merge
      { DhallAppConfig =
            ./internal/makeDhallApp.dhall sha256:d78b701fc5c2acd5b02a361619d782b42035aa82ec89990856b4fa5b9fb7b0c4
          ? ./internal/makeDhallApp.dhall
      , HelmAppConfig =
            ./internal/makeHelmApp.dhall sha256:74bb363ba433417a8924df143ee692a90cb80c3bcc9a29128e243dc7d19b03fa
          ? ./internal/makeHelmApp.dhall
      , KustomizeAppConfig =
            ./internal/makeKustomizeApp.dhall sha256:aca267885643ff245a3f1595dd743505345337804e981c6065b00f0b3788f4ac
          ? ./internal/makeKustomizeApp.dhall
      }
      appConfig
