# dhall-packages

## What is dhall?
Dhall is a strongly-typed programmable configuration language that can be used either directly or converted into other formats such as JSON and YAML. See [dhall-lang.org](https://dhall-lang.org) for more details.

## Why this repository?
This repository contains useful generic dhall packages that can be reused.
The idea is to facilitate package discovery and provide versions containing packages compatible to each other. 

This repository maps to version [12.0.0](https://github.com/dhall-lang/dhall-lang/releases/tag/v12.0.0) of the dhall standard, and therefore requires dhall [1.28.0](https://github.com/dhall-lang/dhall-haskell/releases/tag/1.28.0) or later.

## What does this repository contain?
- [kubernetes](kubernetes) Various bindings for Kubernetes, based on [dhall-kubernetes](https://github.com/dhall-lang/dhall-kubernetes)
    - [argocd](kubernetes/argocd) Manually curated bindings for ArgoCD. Updated to version 1.2.1
    - [cert-manager](kubernetes/cert-manager) Some bindings for cert-manager. Contributions welcome!
    - [k8s](kubernetes/k8s) Re-export of [dhall-kubernetes](https://github.com/dhall-lang/dhall-kubernetes) for convenience
    - [kubernetes-external-secrets](kubernetes/kubernetes-external-secrets). Bindings for using the [kubernetes-external-secrets](https://github.com/godaddy/kubernetes-external-secrets) operator
    - [argo](kubernetes/argo). Automatically generated bindings for [Argo Workflows](https://argoproj.github.io/argo/).
    - [argo-events](kubernetes/argo-events). Automatically generated bindings for [Argo Events](https://argoproj.github.io/argo-events/).
    - [ambassador](kubernetes/ambassador). Manually curated bindings for Ambassador.
- [util](util/CronTab) Various utilities and types that can be shared
    - [CronTab](util/CronTab) CronTab type, default and "show" function.

## How to use this repository
You can import all the packages by doing (it's better if you freeze the import and point it to a specific commit):
```dhall
let packages = https://raw.githubusercontent.com/EarnestResearch/dhall-packages/master/package.dhall
```

and then you can use it in your application like this
```dhall
let packages = https://raw.githubusercontent.com/EarnestResearch/dhall-packages/master/package.dhall

let argocd = packages.kubernetes.argocd

let k8s = packages.kubernetes.k8s.schemas

in  argocd.Application::{
    , metadata = k8s.ObjectMeta::{ name = "hello-app" }
    , spec =
        argocd.ApplicationSpec::{
        , project = "hello-project"
        , source =
            argocd.SourceSpec.TypesUnion.Plugin
              argocd.PluginSourceSpec::{
              , repoURL =
                  "https://github.com/EarnestResearch/dhall-packages.git"
              , path = "kubernetes"
              , plugin = argocd.PluginSpec::{ name = "dhall-to-yaml" }
              }
        , destination =
            argocd.DestinationSpec::{
            , server = "kubernetes.svc.local"
            , namespace = "default"
            }
        }
    }
```

If you don't want to download the entire packages collection, you can simply reference the `package.dhall` file in the directory you are interested in. This will greatly improve performance if you are only using a subset of the packages.

Note: if you use this repository for kubernetes and you are converting to YAML, you should run
```sh
dhall-to-yaml --omitEmpty
```

## Binary cache
Each release contains a `cache.tgz` file with the cache of the whole package. You can download it and save the content into your `$XDG_CACHE_HOME` (`~/.cache` if unset) and use it as cache to speed up resolution.

## Contributing
See [CONTRIBUTING](CONTRIBUTING.md)

## Maintainers
The repository is actively maintained but in alpha stage, expect breaking changes.

## Hat tip
We are standing on the shoulders of giants. This project wouldn't be possible without:
- [dhall](https://dhall-lang.org)
- [dhall-kubernetes](https://github.com/dhall-lang/dhall-kubernetes)
