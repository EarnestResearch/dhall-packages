let argocd =
        ../package.dhall sha256:37659a96e878f98fa6643ec2db53c17dfc9cc388c3a445a979e0310be12e6611
      ? ../package.dhall

let k8s =
        ../../k8s/1.14.dhall sha256:7839bf40f940757e4d71d3c1b84d878f6a4873c3b2706ae4be307b5991acdcac
      ? ../../k8s/1.14.dhall

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
