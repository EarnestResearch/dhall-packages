# dhall-packages

## What is dhall?
Dhall is a strongly-typed programmable configuration language that can be used either directly or converted into other formats such as JSON and YAML. See [dhall-lang.org](https://dhall-lang.org) for more details.

## Why this repository?
This repository contains useful generic dhall packages that can be reused.
The idea is to facilitate package discovery and provide versions containing packages compatible to each other. 

This repository maps to version [10.0.0](https://github.com/dhall-lang/dhall-lang/releases/tag/v10.0.0) of the dhall standard, and therefore requires dhall [1.26.0](https://github.com/dhall-lang/dhall-haskell/releases/tag/1.26.0) or later.

## How to use this repository
You can import all the packages by doing 
```dhall
let packages = https://raw.githubusercontent.com/EarnestResearch/dhall-packages/master/package.dhall sha256:429027b708e2e5192f5f5771c804a7fab99bf1f95761eea4bd9c37ed210e04ad
```

and then you can use it in your application like this
```dhall
let packages = https://raw.githubusercontent.com/EarnestResearch/dhall-packages/master/package.dhall sha256:429027b708e2e5192f5f5771c804a7fab99bf1f95761eea4bd9c37ed210e04ad

let argocd = packages.kubernetes.argocd

let k8s = packages.kubernetes.k8s

in      argocd.Application.default
    //  { metadata =
            k8s.defaults.ObjectMeta // { name = "hello-app" }
        , spec =
                argocd.ApplicationSpec.default
            //  { project =
                    "hello-project"
                , source =
                        argocd.SourceSpec.TypesUnion.Plugin (argocd.PluginSourceSpec.default
                    //  { repoURL = "https://github.com/EarnestResearch/dhall-packages.git",
                          path = "kubernetes",
                            plugin =
                            argocd.PluginSpec.default // { name =
                                "dhall-to-yaml"
                            }
                        })
                , destination =
                    argocd.DestinationSpec.default // {
                        server = "kubernetes.svc.local",
                        namespace = "default"
                    }
                }
        } : argocd.Application.Type

```

If you don't want to download the entire packages collection, you can simply reference the `package.dhall` file in the directory you are interested in.

Note: if you use this repository for kubernetes and you are converting to YAML, you should run
```sh
dhall-to-yaml --omitEmpty
```

## Maintainers
The repository is actively maintained but in alpha stage, expect breaking changes.
