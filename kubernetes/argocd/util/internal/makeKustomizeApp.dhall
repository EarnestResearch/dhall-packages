let TypesUnion =
        ../../TypesUnion.dhall sha256:d44accc04431078bc49cb9adf3a7144a4a2e961082e26073146ee9181bdbaca5
      ? ../../TypesUnion.dhall

let Application =
        ../../Application/package.dhall sha256:c88bb716d8533593cda61e3ec65ce361a32bcd0f5d0849689ef1286cc43e1a51
      ? ../../Application/package.dhall

let ApplicationSpec =
        ../../ApplicationSpec/package.dhall sha256:1fad326e2263f4ee6aa646f576be7b900c8e9ff5b275f1076da2c0a0ea39095f
      ? ../../ApplicationSpec/package.dhall

let SourceSpec =
        ../../SourceSpec/package.dhall sha256:f1b96820008516f6b2e5a3fb8a2a30197a0c3e828db3d105a04b5a4c060729a0
      ? ../../SourceSpec/package.dhall

let KustomizeSourceSpec =
        ../../KustomizeSourceSpec/package.dhall sha256:49e0444ed3ea52ee9cc5268c0db9bd9a06e865ec305828870a5403f67c3c4ec9
      ? ../../KustomizeSourceSpec/package.dhall

let KustomizeSpec =
        ../../KustomizeSpec/package.dhall sha256:152e77012457d05abc56b34957634ddee7c7ff2dbd4f3c9f828312a454648877
      ? ../../KustomizeSpec/package.dhall

let k8s =
        ../../../k8s/1.15.dhall sha256:9ed8981915875f3bbe08ad7047d92cd181b6ece140af876beecadb8ed079e10a
      ? ../../../k8s/1.15.dhall

in      \ ( appConfig
          :   ../KustomizeAppConfig/Type.dhall sha256:4a3f8913366c0ac644abbb39626a3b2df997d07fc23a1754d262998c44d89908
            ? ../KustomizeAppConfig/Type.dhall
          )
    ->    TypesUnion.Application
            Application::{
            , metadata = k8s.ObjectMeta::{ name = Some appConfig.name }
            , spec = ApplicationSpec::{
              , project = appConfig.project
              , source =
                  SourceSpec.TypesUnion.Kustomize
                    KustomizeSourceSpec::{
                    , repoURL = appConfig.source.url
                    , path = appConfig.source.path
                    , targetRevision = appConfig.source.targetRevision
                    , kustomize = KustomizeSpec::{
                      , commonLabels = appConfig.commonLabels
                      , images = appConfig.images
                      , namePrefix = appConfig.namePrefix
                      }
                    }
              , destination = appConfig.destination
              , syncPolicy = appConfig.syncPolicy
              , ignoreDifferences = Some appConfig.ignoreDifferences
              }
            }
        : TypesUnion
