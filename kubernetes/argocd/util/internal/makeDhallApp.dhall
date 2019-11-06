{-
    This assumes that you have installed dhall-to-yaml
    in your argocd repo server.
    See https://argoproj.github.io/argo-cd/operator-manual/custom_tools/#adding-tools-via-volume-mounts
    for more information
-}
let TypesUnion =
        ../../TypesUnion.dhall sha256:b4e4bdf2908414ae238ef26e14388ea6e74f401355412a2dc43ca6299e34f388
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
        ../../../k8s/package.dhall sha256:4c9c40f1762e95578c86c3efbccb87ce74ff67c5111a4c92c4393c6d163bb51b
      ? ../../../k8s/package.dhall

in      \ ( appConfig
          :   ../DhallAppConfig/Type.dhall sha256:29d9330057fd7c24f43be6d3f0df79ec67b8c1966482b1dbc11b5d74ab1bb0c4
            ? ../DhallAppConfig/Type.dhall
          )
    ->    TypesUnion.Application
            (     Application.default
              //  { metadata =
                      k8s.defaults.ObjectMeta // { name = appConfig.name }
                  , spec =
                          ApplicationSpec.default
                      //  { project = appConfig.project
                          , source =
                              SourceSpec.TypesUnion.Plugin
                                (     PluginSourceSpec.default
                                  //  { repoURL = appConfig.source.url
                                      , path = appConfig.source.path
                                      , targetRevision =
                                          appConfig.source.targetRevision
                                      , plugin =
                                              PluginSpec.default
                                          //  { name = "dhall-to-yaml"
                                              , env = Some appConfig.parameters
                                              }
                                      }
                                )
                          , destination = appConfig.destination
                          , syncPolicy = appConfig.syncPolicy
                          , ignoreDifferences = Some appConfig.ignoreDifferences
                          }
                  }
            )
        : TypesUnion
