let argocd =
        ../package.dhall sha256:a4daab169373a4e6a52d10345ccdb579ef5115fad4544db386e0ee8dad14928b
      ? ../package.dhall

let k8s =
        ../../k8s/package.dhall sha256:4c9c40f1762e95578c86c3efbccb87ce74ff67c5111a4c92c4393c6d163bb51b
      ? ../../k8s/package.dhall

in  argocd.TypesUnion.Project
      (     argocd.Project.default
        //  { metadata =
                    k8s.defaults.ObjectMeta
                //  { name =
                          ./projectName.dhall sha256:d7e4e24f5750f02229d03a034faabf0f3378960c20170d83e78ab83c1131aded
                        ? ./projectName.dhall
                    }
            , spec =
                    argocd.ProjectSpec.default
                //  { description =
                        "ArgoCD Example Project"
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
      )
