{-
    This assumes that you have installed dhall-to-yaml
    in your argocd repo server.
    See https://argoproj.github.io/argo-cd/operator-manual/custom_tools/#adding-tools-via-volume-mounts
    for more information
-}
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

let PluginSourceSpec =
        ../../PluginSourceSpec/package.dhall sha256:0d6745d353c85c4724b82b3bdba302e8c524349ee2b3a5d68c6916072af39b97
      ? ../../PluginSourceSpec/package.dhall

let PluginSpec =
        ../../PluginSpec/package.dhall sha256:fd9dd420c9ea830231af7e7893ea217f2f7ca35c313cd0a319f80443ac6c84b9
      ? ../../PluginSpec/package.dhall

let k8s =
        ../../../k8s/1.15.dhall sha256:4bd5939adb0a5fc83d76e0d69aa3c5a30bc1a5af8f9df515f44b6fc59a0a4815
      ? ../../../k8s/1.15.dhall

in      \ ( appConfig
          :   ../DhallAppConfig/Type.dhall sha256:b870b087d04ed906a4b912f2333e66fd43db05bdcea36740a6cd707a380b4a72
            ? ../DhallAppConfig/Type.dhall
          )
    ->    TypesUnion.Application
            Application::{
            , metadata = k8s.ObjectMeta::{ name = appConfig.name }
            , spec = ApplicationSpec::{
              , project = appConfig.project
              , source =
                  SourceSpec.TypesUnion.Plugin
                    PluginSourceSpec::{
                    , repoURL = appConfig.source.url
                    , path = appConfig.source.path
                    , targetRevision = appConfig.source.targetRevision
                    , plugin = PluginSpec::{
                      , name = "dhall-to-yaml"
                      , env = Some appConfig.parameters
                      }
                    }
              , destination = appConfig.destination
              , syncPolicy = appConfig.syncPolicy
              , ignoreDifferences = Some appConfig.ignoreDifferences
              }
            }
        : TypesUnion
