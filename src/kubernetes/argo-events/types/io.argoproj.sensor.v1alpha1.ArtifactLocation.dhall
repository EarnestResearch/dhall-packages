{ file :
    ./io.argoproj.sensor.v1alpha1.FileArtifact.dhall
, configmap :
    Optional ./io.argoproj.sensor.v1alpha1.ConfigmapArtifact.dhall
, git :
    Optional ./io.argoproj.sensor.v1alpha1.GitArtifact.dhall
, inline :
    Optional Text
, resource :
    -- k8s doesn't export definition of Unstructured type
    -- see https://github.com/kubernetes/kubernetes/issues/85448
    Optional https://prelude.dhall-lang.org/v11.1.0/JSON/Type
    -- https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.apimachinery.pkg.apis.meta.v1.unstructured.Unstructured.dhall
, s3 :
    Optional ./io.argoproj.common.S3Artifact.dhall
, url :
    Optional ./io.argoproj.sensor.v1alpha1.URLArtifact.dhall
}
