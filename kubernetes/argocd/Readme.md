# ArgoCD bindings for dhall

This package contains bindings for using dhall to define [ArgoCD](https://argoproj.github.io/argo-cd/) resources. 

## How to define argocd resources with dhall
To define a argocd [application](https://argoproj.github.io/argo-cd/operator-manual/declarative-setup/#applications), you can do:

```dhall
let argocd =
      https://raw.githubusercontent.com/EarnestResearch/dhall-packages/kubernetes/argocd/package.dhall

let k8s = packages.kubernetes.k8s.schemas

in  argocd.Application::{
    , metadata = k8s.ObjectMeta::{ name = "guestbook" }
    , spec =
        argocd.ApplicationSpec::{
        , project = "default"
        , source =
            argocd.SourceSpec.TypesUnion.Directory
              argocd.DirectorySourceSpec::{
              , repoURL =
                  "https://github.com/argoproj/argocd-example-apps.git"
              , path = "guestbook"
              }
        , destination =
            argocd.DestinationSpec::{
            , server = "https://kubernetes.default.svc"
            , namespace = "default"
            }
        }
    }

```

To apply the dhall file, you can do `echo $filename | dhall-to-yaml --omit-empty | kubectl apply -f -`

In dhall you can also refactor any of those strings as imports and reuse them across definitions. 

See the [example](example) directory for a more complete definition of this pattern using our the higher level utilities defined in [util](util).

## How to use argocd to apply dhall templates
You can also use argocd to apply dhall templates in your kubernetes cluster. To do so, you need to install `dhall-to-yaml` as a plugin to the argocd repo server. You can do so by applying the kustomize template in the [kustomize](kustomize) directory (you can further improve it by adding secrets, environment variables, etc.).

This will install a plugin called `dhall-to-yaml` that will look for an `app.dhall` file (or a different file if specified as environment variable). For convenience, our types and utilities already include a `Dhall` source spec that you can leverage. 
