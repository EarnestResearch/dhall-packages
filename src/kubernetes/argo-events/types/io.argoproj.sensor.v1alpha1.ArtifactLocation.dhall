{ file : ./io.argoproj.sensor.v1alpha1.FileArtifact.dhall
, configmap : Optional ./io.argoproj.sensor.v1alpha1.ConfigmapArtifact.dhall
, git : Optional ./io.argoproj.sensor.v1alpha1.GitArtifact.dhall
, inline : Optional Text
, resource : Optional https://prelude.dhall-lang.org/v11.1.0/JSON/Type
, s3 : Optional ./io.argoproj.common.S3Artifact.dhall
, url : Optional ./io.argoproj.sensor.v1alpha1.URLArtifact.dhall
}
