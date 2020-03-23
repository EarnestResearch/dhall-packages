let argocd =
        ../package.dhall sha256:c7a4e6926237d9e229244f201b330ac53a34c197456b75d3ec54a6f2e5aa384d
      ? ../package.dhall

let k8s =
        ../../k8s/1.15.dhall sha256:4bd5939adb0a5fc83d76e0d69aa3c5a30bc1a5af8f9df515f44b6fc59a0a4815
      ? ../../k8s/1.15.dhall

in  argocd.TypesUnion.Project
      argocd.Project::{
      , metadata = k8s.ObjectMeta::{
        , name =
              ./projectName.dhall sha256:d7e4e24f5750f02229d03a034faabf0f3378960c20170d83e78ab83c1131aded
            ? ./projectName.dhall
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
