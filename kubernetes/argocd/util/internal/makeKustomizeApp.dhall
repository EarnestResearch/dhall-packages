let TypesUnion =
        ../../TypesUnion.dhall sha256:b4e4bdf2908414ae238ef26e14388ea6e74f401355412a2dc43ca6299e34f388
      ? ../../TypesUnion.dhall

let Application =
        ../../Application/package.dhall sha256:47bd28e686730591bffb30ddb014ea47470bfd47b2cf3b2aff72fd79167f4089
      ? ../../Application/package.dhall

let ApplicationSpec =
        ../../ApplicationSpec/package.dhall sha256:29e5cc3a22a0e4fd786871d6c285ea7333d9cbef6341d91ba4045491b0bde157
      ? ../../ApplicationSpec/package.dhall

let SourceSpec =
        ../../SourceSpec/package.dhall sha256:f1b96820008516f6b2e5a3fb8a2a30197a0c3e828db3d105a04b5a4c060729a0
      ? ../../SourceSpec/package.dhall

let KustomizeSourceSpec =
        ../../KustomizeSourceSpec/package.dhall sha256:49e0444ed3ea52ee9cc5268c0db9bd9a06e865ec305828870a5403f67c3c4ec9
      ? ../../KustomizeSourceSpec/package.dhall

let KustomizeSpec =
        ../../KustomizeSpec/package.dhall sha256:5a8177a599828057af94bbfa7b51dfc3551e708e52c1764593378217ee834fca
      ? ../../KustomizeSpec/package.dhall

let k8s =
        ../../../k8s/package.dhall sha256:4c9c40f1762e95578c86c3efbccb87ce74ff67c5111a4c92c4393c6d163bb51b
      ? ../../../k8s/package.dhall

in      \ ( appConfig
          :   ../KustomizeAppConfig/Type.dhall sha256:d560f8d2c54266c35fdc696e123ca5decd2a99c5fff9240a7492b8f90ee1f726
            ? ../KustomizeAppConfig/Type.dhall
          )
    ->    TypesUnion.Application
            (     Application.default
              //  { metadata =
                      k8s.defaults.ObjectMeta // { name = appConfig.name }
                  , spec =
                          ApplicationSpec.default
                      //  { project = appConfig.project
                          , source =
                              SourceSpec.TypesUnion.Kustomize
                                (     KustomizeSourceSpec.default
                                  //  { repoURL = appConfig.source.url
                                      , path = appConfig.source.path
                                      , targetRevision =
                                          appConfig.source.targetRevision
                                      , kustomize =
                                              KustomizeSpec.default
                                          //  { commonLabels =
                                                  appConfig.commonLabels
                                              , images = appConfig.images
                                              , namePrefix =
                                                  appConfig.namePrefix
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
