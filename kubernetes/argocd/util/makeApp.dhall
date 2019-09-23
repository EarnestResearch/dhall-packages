    \ ( appConfig
      :   ./AppConfig.dhall sha256:1775eb24a12afb4e8ef0495040c5ba95e46672ff5eb99d187785c4124f273ec8
        ? ./AppConfig.dhall
      )
->  merge
      { DhallAppConfig =
            ./internal/makeDhallApp.dhall sha256:e8cd843fce0a7cb29232d32b948347fe2aff37bb05f1a7fd87bddcda3949dfd8
          ? ./internal/makeDhallApp.dhall
      , HelmAppConfig =
            ./internal/makeHelmApp.dhall sha256:774c1f9cdef222c4fda50c920a6f2833bc27cfc77cd545f9a20a78f770a0cecf
          ? ./internal/makeHelmApp.dhall
      }
      appConfig
