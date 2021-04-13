{-
    Utility to add sync waves to argocd applications and projects.
-}
let k8s =
        ../../k8s/1.15.dhall sha256:9ed8981915875f3bbe08ad7047d92cd181b6ece140af876beecadb8ed079e10a
      ? ../../k8s/1.15.dhall

let Project =
        ../Project/package.dhall sha256:6a66066ed58b5e55c77ce9824e44dfe9dc26e2dfcfc217d4e80d3cf0afbd28cc
      ? ../Project/package.dhall

let Application =
        ../Application/package.dhall sha256:c88bb716d8533593cda61e3ec65ce361a32bcd0f5d0849689ef1286cc43e1a51
      ? ../Application/package.dhall

let TypesUnion =
        ../TypesUnion.dhall sha256:d44accc04431078bc49cb9adf3a7144a4a2e961082e26073146ee9181bdbaca5
      ? ../TypesUnion.dhall

let Optional/default =
        https://prelude.dhall-lang.org/Optional/default sha256:5bd665b0d6605c374b3c4a7e2e2bd3b9c1e39323d41441149ed5e30d86e889ad
      ? https://prelude.dhall-lang.org/Optional/default

let withSyncWaveMetadata =
          \(wave : Integer)
      ->  \(metadata : k8s.ObjectMeta.Type)
      ->      metadata
          //  { annotations = Some
                  (   Optional/default
                        (List { mapKey : Text, mapValue : Text })
                        ([] : List { mapKey : Text, mapValue : Text })
                        metadata.annotations
                    # toMap
                        { `argocd.argoproj.io/sync-wave` = Integer/show wave }
                  )
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
