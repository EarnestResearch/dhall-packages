let argocd =
        ../package.dhall sha256:b0ee43f5521aa371be2ea6ac13e1a1c85c7f01cec15431ce58ec79fe9f740847
      ? ../package.dhall

let k8s =
        ../../k8s/package.dhall sha256:4c9c40f1762e95578c86c3efbccb87ce74ff67c5111a4c92c4393c6d163bb51b
      ? ../../k8s/package.dhall

in  argocd.TypesUnion.Project
      argocd.Project::{
      , metadata =
              k8s.defaults.ObjectMeta
          //  { name =
                    ./projectName.dhall sha256:d7e4e24f5750f02229d03a034faabf0f3378960c20170d83e78ab83c1131aded
                  ? ./projectName.dhall
              }
      , spec =
          argocd.ProjectSpec::{
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
