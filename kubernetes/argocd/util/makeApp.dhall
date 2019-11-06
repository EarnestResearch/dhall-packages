    \ ( appConfig
      :   ./AppConfig.dhall sha256:68838f5a9710963f68ddd5ccff5f3200d2e5292dc565969ee016020bab02355f
        ? ./AppConfig.dhall
      )
->  merge
      { DhallAppConfig =
            ./internal/makeDhallApp.dhall sha256:307117d0407f7386c86538d9d619cd19ae3fb06f172cb39858df05c83e08107a
          ? ./internal/makeDhallApp.dhall
      , HelmAppConfig =
            ./internal/makeHelmApp.dhall sha256:574e8b4cfc308016445d335b5c31ceba11039d0f14e6cfdff5c896e890b30a46
          ? ./internal/makeHelmApp.dhall
      , KustomizeAppConfig =
            ./internal/makeKustomizeApp.dhall sha256:b055e8b3f381150a357107819e368cb5738a4f314ad67215b479d16825399239
          ? ./internal/makeKustomizeApp.dhall
      }
      appConfig
