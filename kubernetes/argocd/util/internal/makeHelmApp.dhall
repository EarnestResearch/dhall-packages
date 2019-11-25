let TypesUnion =
        ../../TypesUnion.dhall sha256:e1ec4a7e47e1182ee7f7308ddd397bfec0ebe4da9188f1a85ff7f062a68b9b71
      ? ../../TypesUnion.dhall

let Application =
        ../../Application/package.dhall sha256:36ddc602d37556fed812b098dbd6efc22062e68418d6b6d2ce8a1f3ff9118067
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
        ../../../k8s/package.dhall sha256:4159b87d109cd88610c9d440701091d6fdd718d81aba5691e2d6ed7c93fbcd09
      ? ../../../k8s/package.dhall

in      \ ( appConfig
          :   ../HelmAppConfig/Type.dhall sha256:a58dc0d542f24958d2f4e4a208317531b749574a35cca08dbf123d059234a02e
            ? ../HelmAppConfig/Type.dhall
          )
    ->    TypesUnion.Application
            Application::{
            , metadata = k8s.schemas.ObjectMeta::{ name = appConfig.name }
            , spec =
                ApplicationSpec::{
                , project = appConfig.project
                , source =
                    SourceSpec.TypesUnion.Helm
                      HelmSourceSpec::{
                      , repoURL = appConfig.source.url
                      , path = appConfig.source.path
                      , targetRevision = appConfig.source.targetRevision
                      , helm =
                          HelmSpec::{
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
