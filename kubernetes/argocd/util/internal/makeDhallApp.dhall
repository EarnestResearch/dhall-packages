{-
    This assumes that you have installed dhall-to-yaml
    in your argocd repo server.
    See https://argoproj.github.io/argo-cd/operator-manual/custom_tools/#adding-tools-via-volume-mounts
    for more information
-}
let TypesUnion =
        ../../TypesUnion.dhall sha256:e1ec4a7e47e1182ee7f7308ddd397bfec0ebe4da9188f1a85ff7f062a68b9b71
      ? ../../TypesUnion.dhall

let Application =
        ../../Application/package.dhall sha256:47bd28e686730591bffb30ddb014ea47470bfd47b2cf3b2aff72fd79167f4089
      ? ../../Application/package.dhall

let ApplicationSpec =
        ../../ApplicationSpec/package.dhall sha256:c048e113b5a4ea3dd4406313697fa405b67a7d536b7ee806633884f0989eedfb
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
        ../../../k8s/package.dhall sha256:4159b87d109cd88610c9d440701091d6fdd718d81aba5691e2d6ed7c93fbcd09
      ? ../../../k8s/package.dhall

in      \ ( appConfig
          :   ../DhallAppConfig/Type.dhall sha256:b870b087d04ed906a4b912f2333e66fd43db05bdcea36740a6cd707a380b4a72
            ? ../DhallAppConfig/Type.dhall
          )
    ->    TypesUnion.Application
            Application::{
            , metadata = k8s.schemas.ObjectMeta::{ name = appConfig.name }
            , spec =
                ApplicationSpec::{
                , project = appConfig.project
                , source =
                    SourceSpec.TypesUnion.Plugin
                      PluginSourceSpec::{
                      , repoURL = appConfig.source.url
                      , path = appConfig.source.path
                      , targetRevision = appConfig.source.targetRevision
                      , plugin =
                          PluginSpec::{
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
