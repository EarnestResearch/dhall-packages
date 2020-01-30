{ cert-manager =
      ./cert-manager/package.dhall sha256:a7d50da2d899e39fcd50bbf497b43151da654f7fcb8cddab3c0a713b06d53de0
    ? ./cert-manager/package.dhall
, kubernetes-external-secrets =
      ./kubernetes-external-secrets/package.dhall sha256:4b52e6019a04f34da8819d85e6f43d5387040fbab102ba88399584fd0b845ee6
    ? ./kubernetes-external-secrets/package.dhall
, k8s =
      ./k8s/package.dhall sha256:4b575d18387671adf3e3b1db4fe7fa6ff880c26c8c69082176b4ef84dee2e4d6
    ? ./k8s/package.dhall
, argocd =
      ./argocd/package.dhall sha256:37659a96e878f98fa6643ec2db53c17dfc9cc388c3a445a979e0310be12e6611
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
