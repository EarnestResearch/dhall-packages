{ apiVersion : Text
, items :
    List
      (   ./io.argoproj.gateway.v1alpha1.Gateway.dhall sha256:eaef66a79ed76dfd4b84726568eacbf64e00e445b12f31d73960f8865676309a
        ? ./io.argoproj.gateway.v1alpha1.Gateway.dhall
      )
, kind : Text
, metadata :
      https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.apimachinery.pkg.apis.meta.v1.ListMeta.dhall sha256:96b722fff4d997e9c32020312107b8730133ff9aedee32c5a8e30d4b762e9dcb
    ? https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.apimachinery.pkg.apis.meta.v1.ListMeta.dhall
}
