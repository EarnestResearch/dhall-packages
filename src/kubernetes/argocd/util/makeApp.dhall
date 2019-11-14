    \(appConfig : ./AppConfig.dhall)
->  merge
      { DhallAppConfig = ./internal/makeDhallApp.dhall
      , HelmAppConfig = ./internal/makeHelmApp.dhall
      , KustomizeAppConfig = ./internal/makeKustomizeApp.dhall
      }
      appConfig
