    \ ( appConfig
      :   ./AppConfig.dhall sha256:c610cee69a0557cfb4e4ec51de18a89201a4d7fc4ca2c9a6d4f2372f5c64d968
        ? ./AppConfig.dhall
      )
->  merge
      { DhallAppConfig =
            ./internal/makeDhallApp.dhall sha256:c128183443f11de7d2c9c891baefe03e24cef32f471e028e1028c7a2cb04347b
          ? ./internal/makeDhallApp.dhall
      , HelmAppConfig =
            ./internal/makeHelmApp.dhall sha256:9793ebc5dbc72278a4b8869d78150d2c119632e20dd459a79f05304df695e863
          ? ./internal/makeHelmApp.dhall
      , KustomizeAppConfig =
            ./internal/makeKustomizeApp.dhall sha256:92db8f8599ba8fc05034db9845e6fa23975f3e4f38ec743804ee30e86992485b
          ? ./internal/makeKustomizeApp.dhall
      }
      appConfig
