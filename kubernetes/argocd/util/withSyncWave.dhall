{-
    Utility to add sync waves to argocd applications and projects.
-}
let k8s =
        ../../k8s/1.15.dhall sha256:4bd5939adb0a5fc83d76e0d69aa3c5a30bc1a5af8f9df515f44b6fc59a0a4815
      ? ../../k8s/1.15.dhall

let Project =
        ../Project/package.dhall sha256:94eb236942332300b6b8afcc4767272b156f440479d4bb1af5ac21a0b701f2d2
      ? ../Project/package.dhall

let Application =
        ../Application/package.dhall sha256:a6a0db9570250e7d94e9fcf7e79613fd9e12a5211c70030d58ff24fde2a4f765
      ? ../Application/package.dhall

let TypesUnion =
        ../TypesUnion.dhall sha256:c1f91d90d8220d11f9ff8d745878da05ca9dc0af20a0792fe70c60c876308fc9
      ? ../TypesUnion.dhall

let withSyncWaveMetadata =
          \(wave : Integer)
      ->  \(metadata : k8s.ObjectMeta.Type)
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
