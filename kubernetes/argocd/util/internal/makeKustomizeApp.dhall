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

let KustomizeSourceSpec =
        ../../KustomizeSourceSpec/package.dhall sha256:49e0444ed3ea52ee9cc5268c0db9bd9a06e865ec305828870a5403f67c3c4ec9
      ? ../../KustomizeSourceSpec/package.dhall

let KustomizeSpec =
        ../../KustomizeSpec/package.dhall sha256:152e77012457d05abc56b34957634ddee7c7ff2dbd4f3c9f828312a454648877
      ? ../../KustomizeSpec/package.dhall

let k8s =
        ../../../k8s/package.dhall sha256:4159b87d109cd88610c9d440701091d6fdd718d81aba5691e2d6ed7c93fbcd09
      ? ../../../k8s/package.dhall

in      \ ( appConfig
          :   ../KustomizeAppConfig/Type.dhall sha256:9f0b1ccba8b4fd581b08f86ab6e2258ff653ad90de434d467b6504d16abe5269
            ? ../KustomizeAppConfig/Type.dhall
          )
    ->    TypesUnion.Application
            Application::{
            , metadata = k8s.schemas.ObjectMeta::{ name = appConfig.name }
            , spec =
                ApplicationSpec::{
                , project = appConfig.project
                , source =
                    SourceSpec.TypesUnion.Kustomize
                      KustomizeSourceSpec::{
                      , repoURL = appConfig.source.url
                      , path = appConfig.source.path
                      , targetRevision = appConfig.source.targetRevision
                      , kustomize =
                          KustomizeSpec::{
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
