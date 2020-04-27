{ apiVersion : Text
, kind : Text
, metadata :
      https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta.dhall sha256:f0672df8d25dd0e384d486b81d8f551c55d5d6a5868374a5bd35ee0a525f8cee
    ? https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta.dhall
, spec :
      ./io.argoproj.sensor.v1alpha1.SensorSpec.dhall sha256:3f2ecd04ec5615df6fb32b466696bcb1ea1e92ace91437cdf329fd2b8339d01c
    ? ./io.argoproj.sensor.v1alpha1.SensorSpec.dhall
, status :
    Optional
      (   ./io.argoproj.sensor.v1alpha1.SensorStatus.dhall sha256:a7a5b93d43239663c5da523754c1a34d8e58172a934370427253c2a96dfc0acc
        ? ./io.argoproj.sensor.v1alpha1.SensorStatus.dhall
      )
}
