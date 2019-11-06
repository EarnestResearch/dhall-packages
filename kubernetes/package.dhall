{ cert-manager =
      ./cert-manager/package.dhall sha256:2f5a8a61e8259bf6d105cab504de2c7ec9a9f004c8c6e0c4a7e773595e800de3
    ? ./cert-manager/package.dhall
, kubernetes-external-secrets =
      ./kubernetes-external-secrets/package.dhall sha256:0808dcae79fdc134b201076114cfa7d24391fe0ac909b4ee4a929ddb2567326a
    ? ./kubernetes-external-secrets/package.dhall
, k8s =
      ./k8s/package.dhall sha256:4c9c40f1762e95578c86c3efbccb87ce74ff67c5111a4c92c4393c6d163bb51b
    ? ./k8s/package.dhall
, argocd =
      ./argocd/package.dhall sha256:e45774280936733937712c177f862b4f0dd007fc583a231f391b5671bee54f57
    ? ./argocd/package.dhall
, argo =
      ./argo/schemas.dhall sha256:3dd2e0a8f264968fccb2358b799afacd493f205234501820cf5b3e2134ef1704
    ? ./argo/schemas.dhall
, ambassador =
      ./ambassador/package.dhall sha256:2912791e24ad864ab6684666e603a0c5f9f62cf8f436aa729b9883a6adbecf0e
    ? ./ambassador/package.dhall
}
