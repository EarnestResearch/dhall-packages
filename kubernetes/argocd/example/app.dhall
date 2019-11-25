let argocd =
        ../package.dhall sha256:da3664e8a089162f27db3d2d552f08e11b923d8546853f20e13f5b9a6d7b26c6
      ? ../package.dhall

let config =
      argocd.util.AppConfig.DhallAppConfig
        argocd.util.DhallAppConfig::{
        , name = "my-app"
        , project =
              ./projectName.dhall sha256:d7e4e24f5750f02229d03a034faabf0f3378960c20170d83e78ab83c1131aded
            ? ./projectName.dhall
        , source =
            argocd.util.Source::{
            , url = "https://github.com/my_org/my_repo.git"
            , path = "k8s"
            }
        , destination =
              ./destination.dhall sha256:c42b35050c674d39753b5f45d211bf5aef40f0bcd0d73f8d1d7f0046fb668a2d
            ? ./destination.dhall
        , parameters = [ { name = "IMAGE_VERSION", value = "latest" } ]
        }

in  argocd.util.makeApp config
