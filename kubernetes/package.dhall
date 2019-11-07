{ cert-manager =
      ./cert-manager/package.dhall sha256:2f5a8a61e8259bf6d105cab504de2c7ec9a9f004c8c6e0c4a7e773595e800de3
    ? ./cert-manager/package.dhall
, kubernetes-external-secrets =
      ./kubernetes-external-secrets/package.dhall sha256:80f9cd5625bf7fa2eb87b67627d712062194a85e1b399f4ed0efa03aaac68b27
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
      ./ambassador/package.dhall sha256:dacfb56527a99120fcd1c7951ca18a451451432e8655222e25af6b4336469cb7
    ? ./ambassador/package.dhall
}
