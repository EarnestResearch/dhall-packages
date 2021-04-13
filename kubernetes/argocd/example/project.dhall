let argocd =
        ../package.dhall sha256:ce61ca8208927e9595a030a3fa467eb48794979031c3d026b4dbd57e5cc9942d
      ? ../package.dhall
      ? (   ../package.dhall sha256:ce61ca8208927e9595a030a3fa467eb48794979031c3d026b4dbd57e5cc9942d
          ? ../package.dhall
        )

let k8s =
        ../../k8s/1.15.dhall sha256:9ed8981915875f3bbe08ad7047d92cd181b6ece140af876beecadb8ed079e10a
      ? ../../k8s/1.15.dhall

in  argocd.TypesUnion.Project
      argocd.Project::{
      , metadata = k8s.ObjectMeta::{
        , name = Some
            (   ./projectName.dhall sha256:d7e4e24f5750f02229d03a034faabf0f3378960c20170d83e78ab83c1131aded
              ? ./projectName.dhall
            )
        }
      , spec = argocd.ProjectSpec::{
        , description = "ArgoCD Example Project"
        , sourceRepos =
          [   ./repo.dhall sha256:d6ee23f065555c0ad8a59cfeaf0d06f5b2f030a1bf91960c50a66e31937bcb74
            ? ./repo.dhall
          ]
        , destinations =
          [   ./destination.dhall sha256:c42b35050c674d39753b5f45d211bf5aef40f0bcd0d73f8d1d7f0046fb668a2d
            ? ./destination.dhall
          ]
        }
      }
