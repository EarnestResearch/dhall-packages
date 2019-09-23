{-
    Utility to add sync waves to argocd applications and projects.
-}
let k8s =
        ../../k8s/package.dhall sha256:4c9c40f1762e95578c86c3efbccb87ce74ff67c5111a4c92c4393c6d163bb51b
      ? ../../k8s/package.dhall

let argocd =
        ../package.dhall sha256:a4daab169373a4e6a52d10345ccdb579ef5115fad4544db386e0ee8dad14928b
      ? ../package.dhall

let withSyncWaveMetadata =
          \(wave : Integer)
      ->  \(metadata : k8s.types.ObjectMeta)
      ->      metadata
          //  { annotations =
                    metadata.annotations
                  # ( toMap
                        { `argocd.argoproj.io/sync-wave` = Integer/show wave }
                    )
              }

let withSyncWaveApplication =
          \(wave : Integer)
      ->  \(app : argocd.Application.Type)
      ->  argocd.TypesUnion.Application
            (app // { metadata = withSyncWaveMetadata wave app.metadata })

let withSyncWaveProject =
          \(wave : Integer)
      ->  \(proj : argocd.Project.Type)
      ->  argocd.TypesUnion.Project
            (proj // { metadata = withSyncWaveMetadata wave proj.metadata })

in      \(wave : Integer)
    ->  \(argocdUnion : argocd.TypesUnion)
    ->  merge
          { Application =
              withSyncWaveApplication wave
          , Project =
              withSyncWaveProject wave
          }
          argocdUnion
