{-
    This assumes that you have installed dhall-to-yaml
    in your argocd repo server.
    See https://argoproj.github.io/argo-cd/operator-manual/custom_tools/#adding-tools-via-volume-mounts
    for more information
-}
let TypesUnion = ../../TypesUnion.dhall

let Application = ../../Application/package.dhall

let ApplicationSpec = ../../ApplicationSpec/package.dhall

let SourceSpec = ../../SourceSpec/package.dhall

let PluginSourceSpec = ../../PluginSourceSpec/package.dhall

let PluginSpec = ../../PluginSpec/package.dhall

let k8s = ../../../k8s/package.dhall

in      \(appConfig : ../DhallAppConfig/Type.dhall)
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
