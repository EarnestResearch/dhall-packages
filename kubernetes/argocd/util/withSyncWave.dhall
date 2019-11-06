{-
    Utility to add sync waves to argocd applications and projects.
-}
let k8s =
        ../../k8s/package.dhall sha256:4c9c40f1762e95578c86c3efbccb87ce74ff67c5111a4c92c4393c6d163bb51b
      ? ../../k8s/package.dhall

let Project =
        ../Project/package.dhall sha256:43e36b1dc0eec92d602643cbee9b21bf5d27b8912cabf8d88a1776b5a5b1f7d8
      ? ../Project/package.dhall

let Application =
        ../Application/package.dhall sha256:8ccca3adfe68d6acb15cf540b6d2595967cd508fc59ea3ccaa586e35b503f973
      ? ../Application/package.dhall

let TypesUnion =
        ../TypesUnion.dhall sha256:78e4af72e3e73d3eb67ecf4e431cf93ee3213d15ed42326f163aafed0a0ba866
      ? ../TypesUnion.dhall

let withSyncWaveMetadata =
          \(wave : Integer)
      ->  \(metadata : k8s.types.ObjectMeta)
      ->      metadata
          //  { annotations =
                    metadata.annotations
                  # toMap { `argocd.argoproj.io/sync-wave` = Integer/show wave }
              }

let withSyncWaveApplication =
          \(wave : Integer)
      ->  \(app : Application.Type)
      ->  TypesUnion.Application
            (app // { metadata = withSyncWaveMetadata wave app.metadata })

let withSyncWaveProject =
          \(wave : Integer)
      ->  \(proj : Project.Type)
      ->  TypesUnion.Project
            (proj // { metadata = withSyncWaveMetadata wave proj.metadata })

in      \(wave : Integer)
    ->  \(argocdUnion : TypesUnion)
    ->  merge
          { Application = withSyncWaveApplication wave
          , Project = withSyncWaveProject wave
          }
          argocdUnion
