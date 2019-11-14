let TypesUnion = ../../TypesUnion.dhall

let Application = ../../Application/package.dhall

let ApplicationSpec = ../../ApplicationSpec/package.dhall

let SourceSpec = ../../SourceSpec/package.dhall

let HelmSourceSpec = ../../HelmSourceSpec/package.dhall

let HelmSpec = ../../HelmSpec/package.dhall

let k8s = ../../../k8s/package.dhall

in      \(appConfig : ../HelmAppConfig/Type.dhall)
    ->    TypesUnion.Application
            (     Application.default
              //  { metadata =
                      k8s.defaults.ObjectMeta // { name = appConfig.name }
                  , spec =
                          ApplicationSpec.default
                      //  { project = appConfig.project
                          , source =
                              SourceSpec.TypesUnion.Helm
                                (     HelmSourceSpec.default
                                  //  { repoURL = appConfig.source.url
                                      , path = appConfig.source.path
                                      , targetRevision =
                                          appConfig.source.targetRevision
                                      , helm =
                                              HelmSpec.default
                                          //  { valueFiles =
                                                  Some appConfig.valueFiles
                                              , parameters =
                                                  Some appConfig.parameters
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
