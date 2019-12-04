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
      ./argocd/package.dhall sha256:da3664e8a089162f27db3d2d552f08e11b923d8546853f20e13f5b9a6d7b26c6
    ? ./argocd/package.dhall
, argo =
      ./argo/package.dhall sha256:72c8a8f37f102ba5bff6bf68885d2c8f53817dfa4215b702bb9c544582048fa6
    ? ./argo/package.dhall
, argo-events =
      ./argo-events/package.dhall sha256:06fdc660a4abfc141641cfc58855ad52192b9f93d4d8edbaae2f9aba77d1efc7
    ? ./argo-events/package.dhall
, ambassador =
      ./ambassador/package.dhall sha256:5aaed07cae5f55f7a989ec39240716e6f9656c47681c552aca8fd138aaf14bcf
    ? ./ambassador/package.dhall
}
