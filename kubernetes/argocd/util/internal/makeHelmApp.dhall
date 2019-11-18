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
          :   ../HelmAppConfig/Type.dhall sha256:b868c82151c0eb1467b51a7f42be8ccd0c0abb58fd74536672b2de843a21b35a
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
