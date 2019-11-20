{ apiVersion : Text
, items :
    List
      (   ./io.argoproj.gateway.v1alpha1.Gateway.dhall sha256:099f71ccd7350834abc4cc7887e10fff3d192cc0598d6e73335606b11691c1d5
        ? ./io.argoproj.gateway.v1alpha1.Gateway.dhall
      )
, kind : Text
, metadata :
      https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.apimachinery.pkg.apis.meta.v1.ListMeta.dhall sha256:96b722fff4d997e9c32020312107b8730133ff9aedee32c5a8e30d4b762e9dcb
    ? https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.apimachinery.pkg.apis.meta.v1.ListMeta.dhall
}
