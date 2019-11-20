{ apiVersion : Text
, items :
    List
      (   ./io.argoproj.sensor.v1alpha1.Sensor.dhall sha256:8c5385fad5951d3806d4efce6c5070ecb86e342a4b5cb4a3bc1a089c7435d4cd
        ? ./io.argoproj.sensor.v1alpha1.Sensor.dhall
      )
, kind : Text
, metadata :
      https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.apimachinery.pkg.apis.meta.v1.ListMeta.dhall sha256:96b722fff4d997e9c32020312107b8730133ff9aedee32c5a8e30d4b762e9dcb
    ? https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.apimachinery.pkg.apis.meta.v1.ListMeta.dhall
}
