let argocd =
        ../package.dhall sha256:da3664e8a089162f27db3d2d552f08e11b923d8546853f20e13f5b9a6d7b26c6
      ? ../package.dhall

let k8s =
        ../../k8s/package.dhall sha256:4159b87d109cd88610c9d440701091d6fdd718d81aba5691e2d6ed7c93fbcd09
      ? ../../k8s/package.dhall

in  argocd.TypesUnion.Project
      argocd.Project::{
      , metadata =
          k8s.schemas.ObjectMeta::{
          , name =
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
