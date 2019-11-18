let argocd = ../package.dhall

let k8s = ../../k8s/package.dhall

in  argocd.TypesUnion.Project
      argocd.Project::{
      , metadata = k8s.schemas.ObjectMeta::{ name = ./projectName.dhall }
      , spec =
          argocd.ProjectSpec::{
          , description = "ArgoCD Example Project"
          , sourceRepos = [ ./repo.dhall ]
          , destinations = [ ./destination.dhall ]
          }
      }
