let argocd = ../package.dhall

let config =
      argocd.util.AppConfig.DhallAppConfig
        argocd.util.DhallAppConfig::{
        , name = "my-app"
        , project = ./projectName.dhall
        , source =
            argocd.util.Source::{
            , url = "https://github.com/my_org/my_repo.git"
            , path = "k8s"
            }
        , destination = ./destination.dhall
        , parameters = [ { name = "IMAGE_VERSION", value = "latest" } ]
        }

in  argocd.util.makeApp config
