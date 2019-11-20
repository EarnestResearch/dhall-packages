{ file =
    ./io.argoproj.sensor.v1alpha1.FileArtifact.dhall
, configmap =
    None ./../types/io.argoproj.sensor.v1alpha1.ConfigmapArtifact.dhall
, git =
    None ./../types/io.argoproj.sensor.v1alpha1.GitArtifact.dhall
, inline =
    None Text
, resource =
    None
    https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.apimachinery.pkg.apis.meta.v1.unstructured.Unstructured.dhall
, s3 =
    None ./../types/io.argoproj.common.S3Artifact.dhall
, url =
    None ./../types/io.argoproj.sensor.v1alpha1.URLArtifact.dhall
}
