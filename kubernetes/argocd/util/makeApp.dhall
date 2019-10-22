    \ ( appConfig
      :   ./AppConfig.dhall sha256:1775eb24a12afb4e8ef0495040c5ba95e46672ff5eb99d187785c4124f273ec8
        ? ./AppConfig.dhall
      )
->  merge
      { DhallAppConfig =
            ./internal/makeDhallApp.dhall sha256:307117d0407f7386c86538d9d619cd19ae3fb06f172cb39858df05c83e08107a
          ? ./internal/makeDhallApp.dhall
      , HelmAppConfig =
            ./internal/makeHelmApp.dhall sha256:574e8b4cfc308016445d335b5c31ceba11039d0f14e6cfdff5c896e890b30a46
          ? ./internal/makeHelmApp.dhall
      }
      appConfig
