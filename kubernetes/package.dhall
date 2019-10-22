{ cert-manager =
      ./cert-manager/package.dhall sha256:2f5a8a61e8259bf6d105cab504de2c7ec9a9f004c8c6e0c4a7e773595e800de3
    ? ./cert-manager/package.dhall
, kubernetes-external-secrets =
      ./kubernetes-external-secrets/package.dhall sha256:da205126f0aaed973390606373855fe7c0acb62bad6503edb2d7c19ded71b7fd
    ? ./kubernetes-external-secrets/package.dhall
, k8s =
      ./k8s/package.dhall sha256:4c9c40f1762e95578c86c3efbccb87ce74ff67c5111a4c92c4393c6d163bb51b
    ? ./k8s/package.dhall
, argocd =
      ./argocd/package.dhall sha256:b25147863eac2362c0c7b8d79e92f3181f6ecf57fd82ccb1fcb5a0117f6829e0
    ? ./argocd/package.dhall
}
