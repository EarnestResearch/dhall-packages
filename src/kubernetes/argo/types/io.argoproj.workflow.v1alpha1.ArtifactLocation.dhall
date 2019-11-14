{ archiveLogs : Optional Bool
, artifactory :
    Optional ./io.argoproj.workflow.v1alpha1.ArtifactoryArtifact.dhall
, git : Optional ./io.argoproj.workflow.v1alpha1.GitArtifact.dhall
, hdfs : Optional ./io.argoproj.workflow.v1alpha1.HDFSArtifact.dhall
, http : Optional ./io.argoproj.workflow.v1alpha1.HTTPArtifact.dhall
, raw : Optional ./io.argoproj.workflow.v1alpha1.RawArtifact.dhall
, s3 : Optional ./io.argoproj.workflow.v1alpha1.S3Artifact.dhall
}
