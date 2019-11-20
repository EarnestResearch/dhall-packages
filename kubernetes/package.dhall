{ cert-manager =
      ./cert-manager/package.dhall sha256:2f5a8a61e8259bf6d105cab504de2c7ec9a9f004c8c6e0c4a7e773595e800de3
    ? ./cert-manager/package.dhall
, kubernetes-external-secrets =
      ./kubernetes-external-secrets/package.dhall sha256:80f9cd5625bf7fa2eb87b67627d712062194a85e1b399f4ed0efa03aaac68b27
    ? ./kubernetes-external-secrets/package.dhall
, k8s =
      ./k8s/package.dhall sha256:4159b87d109cd88610c9d440701091d6fdd718d81aba5691e2d6ed7c93fbcd09
    ? ./k8s/package.dhall
, argocd =
      ./argocd/package.dhall sha256:e45774280936733937712c177f862b4f0dd007fc583a231f391b5671bee54f57
    ? ./argocd/package.dhall
, argo =
      ./argo/schemas.dhall sha256:0b2f1fd43591a5f4df3156179f601fbea9adc86c740becf5629570bf82a8874e
    ? ./argo/schemas.dhall
, argo-events =
      ./argo-events/schemas.dhall sha256:fcf8f0804d2ab54011304da6536d663885f1833c41938bf91f0d1ad49117061b
    ? ./argo-events/schemas.dhall
, ambassador =
      ./ambassador/package.dhall sha256:7c482aa11b7c7d4679e0a8914b89f4c4e07c5b6b70ce961a87082f63f3833c75
    ? ./ambassador/package.dhall
}
