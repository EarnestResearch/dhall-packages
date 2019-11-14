# ArgoCD bindings for dhall

This package contains bindings for using dhall with [ArgoCD](https://argoproj.github.io/argo-cd/) 1.2 . You can see the types represented in the root directory, each one with a `Type.dhall` and `default.dhall` (except for unions, where you will find a `TypesUnion.dhall`).

## Installation
To properly use dhall with argocd, you need to install dhall-to-yaml in argocd-repo-server.
See [ArgoCD's docs](https://argoproj.github.io/argo-cd/operator-manual/custom_tools/#adding-tools-via-volume-mounts) for more information.

## Usage
See [examples].

### Higher level (helper) functions
See [examples/app.dhall] for how to define an application using higher level functions

### Raw bindings
See [examples/project.dhall] for how to define a project using the raw bindings.