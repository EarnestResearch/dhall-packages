let argocd =
        ../package.dhall sha256:c29b25fa48184b104469d515d82f52ba317ad178b084a6096f5eb9153ce5fea2
      ? ../package.dhall

let config =
      argocd.util.AppConfig.DhallAppConfig
        (     argocd.util.DhallAppConfig.default
          //  { name =
                  "my-app"
              , project =
                    ./projectName.dhall sha256:d7e4e24f5750f02229d03a034faabf0f3378960c20170d83e78ab83c1131aded
                  ? ./projectName.dhall
              , source =
                      argocd.util.Source.default
                  //  { url = "https://github.com/my_org/my_repo.git"
                      , path = "k8s"
                      }
              , destination =
                    ./destination.dhall sha256:c42b35050c674d39753b5f45d211bf5aef40f0bcd0d73f8d1d7f0046fb668a2d
                  ? ./destination.dhall
              , parameters = [ { name = "IMAGE_VERSION", value = "latest" } ]
              }
        )

in  argocd.util.makeApp config
