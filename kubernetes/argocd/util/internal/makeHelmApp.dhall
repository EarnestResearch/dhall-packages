let TypesUnion =
        ../../TypesUnion.dhall sha256:78e4af72e3e73d3eb67ecf4e431cf93ee3213d15ed42326f163aafed0a0ba866
      ? ../../TypesUnion.dhall

let Application =
        ../../Application/package.dhall sha256:8ccca3adfe68d6acb15cf540b6d2595967cd508fc59ea3ccaa586e35b503f973
      ? ../../Application/package.dhall

let ApplicationSpec =
        ../../ApplicationSpec/package.dhall sha256:f8a31d4039c8c96352f45414fd2cdfe9ab981a7c036904bd4d4c13ed7762dd44
      ? ../../ApplicationSpec/package.dhall

let SourceSpec =
        ../../SourceSpec/package.dhall sha256:edb5091c3a6d426780564c737853f3a4478466f2a92cc50e4e44a85d28eb8481
      ? ../../SourceSpec/package.dhall

let HelmSourceSpec =
        ../../HelmSourceSpec/package.dhall sha256:380ded7e9ccb3e786facd647fd0d28bb6df20b9dce93e194413b7f6968a39a53
      ? ../../HelmSourceSpec/package.dhall

let HelmSpec =
        ../../HelmSpec/package.dhall sha256:1614bee24c1c396e322f826350481349c3c1342e1e6edcdae7c6925bc9c2224a
      ? ../../HelmSpec/package.dhall

let k8s =
        ../../../k8s/package.dhall sha256:4c9c40f1762e95578c86c3efbccb87ce74ff67c5111a4c92c4393c6d163bb51b
      ? ../../../k8s/package.dhall

in      \ ( appConfig
          :   ../HelmAppConfig/Type.dhall sha256:b868c82151c0eb1467b51a7f42be8ccd0c0abb58fd74536672b2de843a21b35a
            ? ../HelmAppConfig/Type.dhall
          )
    ->    TypesUnion.Application
            (     Application.default
              //  { metadata =
                      k8s.defaults.ObjectMeta // { name = appConfig.name }
                  , spec =
                          ApplicationSpec.default
                      //  { project =
                              appConfig.project
                          , source =
                              SourceSpec.TypesUnion.Helm
                                (     HelmSourceSpec.default
                                  //  { repoURL =
                                          appConfig.source.url
                                      , path =
                                          appConfig.source.path
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
                          , destination =
                              appConfig.destination
                          , syncPolicy =
                              appConfig.syncPolicy
                          , ignoreDifferences =
                              Some appConfig.ignoreDifferences
                          }
                  }
            )
        : TypesUnion
