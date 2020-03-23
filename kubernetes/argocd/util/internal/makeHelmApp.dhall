let TypesUnion =
        ../../TypesUnion.dhall sha256:c1f91d90d8220d11f9ff8d745878da05ca9dc0af20a0792fe70c60c876308fc9
      ? ../../TypesUnion.dhall

let Application =
        ../../Application/package.dhall sha256:a6a0db9570250e7d94e9fcf7e79613fd9e12a5211c70030d58ff24fde2a4f765
      ? ../../Application/package.dhall

let ApplicationSpec =
        ../../ApplicationSpec/package.dhall sha256:1fad326e2263f4ee6aa646f576be7b900c8e9ff5b275f1076da2c0a0ea39095f
      ? ../../ApplicationSpec/package.dhall

let SourceSpec =
        ../../SourceSpec/package.dhall sha256:f1b96820008516f6b2e5a3fb8a2a30197a0c3e828db3d105a04b5a4c060729a0
      ? ../../SourceSpec/package.dhall

let HelmSourceSpec =
        ../../HelmSourceSpec/package.dhall sha256:380ded7e9ccb3e786facd647fd0d28bb6df20b9dce93e194413b7f6968a39a53
      ? ../../HelmSourceSpec/package.dhall

let HelmSpec =
        ../../HelmSpec/package.dhall sha256:1614bee24c1c396e322f826350481349c3c1342e1e6edcdae7c6925bc9c2224a
      ? ../../HelmSpec/package.dhall

let k8s =
        ../../../k8s/1.15.dhall sha256:4bd5939adb0a5fc83d76e0d69aa3c5a30bc1a5af8f9df515f44b6fc59a0a4815
      ? ../../../k8s/1.15.dhall

in      \ ( appConfig
          :   ../HelmAppConfig/Type.dhall sha256:a58dc0d542f24958d2f4e4a208317531b749574a35cca08dbf123d059234a02e
            ? ../HelmAppConfig/Type.dhall
          )
    ->    TypesUnion.Application
            Application::{
            , metadata = k8s.ObjectMeta::{ name = appConfig.name }
            , spec = ApplicationSpec::{
              , project = appConfig.project
              , source =
                  SourceSpec.TypesUnion.Helm
                    HelmSourceSpec::{
                    , repoURL = appConfig.source.url
                    , path = appConfig.source.path
                    , targetRevision = appConfig.source.targetRevision
                    , helm = HelmSpec::{
                      , valueFiles = Some appConfig.valueFiles
                      , parameters = Some appConfig.parameters
                      }
                    }
              , destination = appConfig.destination
              , syncPolicy = appConfig.syncPolicy
              , ignoreDifferences = Some appConfig.ignoreDifferences
              }
            }
        : TypesUnion
