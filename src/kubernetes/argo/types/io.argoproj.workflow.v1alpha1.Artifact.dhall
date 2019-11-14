{ name : Text
, archive : Optional ./io.argoproj.workflow.v1alpha1.ArchiveStrategy.dhall
, archiveLogs : Optional Bool
, artifactory :
    Optional ./io.argoproj.workflow.v1alpha1.ArtifactoryArtifact.dhall
, from : Optional Text
, git : Optional ./io.argoproj.workflow.v1alpha1.GitArtifact.dhall
, globalName : Optional Text
, hdfs : Optional ./io.argoproj.workflow.v1alpha1.HDFSArtifact.dhall
, http : Optional ./io.argoproj.workflow.v1alpha1.HTTPArtifact.dhall
, mode : Optional Natural
, optional : Optional Bool
, path : Optional Text
, raw : Optional ./io.argoproj.workflow.v1alpha1.RawArtifact.dhall
, s3 : Optional ./io.argoproj.workflow.v1alpha1.S3Artifact.dhall
}
