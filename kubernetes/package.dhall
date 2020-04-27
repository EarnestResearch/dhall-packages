{ cert-manager =
      ./cert-manager/package.dhall sha256:1249e3f2a27a1b46b5bd726c81f9424735a8e85344aba173705147b21560a384
    ? ./cert-manager/package.dhall
, kubernetes-external-secrets =
      ./kubernetes-external-secrets/package.dhall sha256:7150f631a6ae9368732b0d6c0db279da1b4b84f3cdfb90270db7c785a4291c07
    ? ./kubernetes-external-secrets/package.dhall
, k8s =
      ./k8s/package.dhall sha256:99637fe8405be855dd75004ac00251f54432cc151c7e64bf13a9e6602513281b
    ? ./k8s/package.dhall
, argocd =
      ./argocd/package.dhall sha256:c7a4e6926237d9e229244f201b330ac53a34c197456b75d3ec54a6f2e5aa384d
    ? ./argocd/package.dhall
, argo =
      ./argo/package.dhall sha256:d609a81190e145aa02bdd0e32aa8f018360946883f7a7706066a0fd4c6decc53
    ? ./argo/package.dhall
, argo-events =
      ./argo-events/package.dhall sha256:c1dfad4c982bb700c2d2dcb7adbc325f5e67d1eb016a04551d41085411958c52
    ? ./argo-events/package.dhall
, ambassador =
      ./ambassador/package.dhall sha256:24f35c2f19dace8e899148f03da017a086334583f7ab4b9a0d73afca9bd6a091
    ? ./ambassador/package.dhall
, webhook =
      ./webhook/package.dhall sha256:ddb9f54f2f15cc2ec9e4106db0d98a68f28fbc2c58d92d36f1a5e2280aaa0bea
    ? ./webhook/package.dhall
}
