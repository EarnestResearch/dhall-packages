{ archiveLogs = None Bool
, artifactory =
    None
      (   ./../types/io.argoproj.workflow.v1alpha1.ArtifactoryArtifact.dhall sha256:8cf3a52f2351a7216e66c220adb53eb7d0e63939e8ec88fe34e5c7eb10365f71
        ? ./../types/io.argoproj.workflow.v1alpha1.ArtifactoryArtifact.dhall
      )
, git =
    None
      (   ./../types/io.argoproj.workflow.v1alpha1.GitArtifact.dhall sha256:690dccc8c189af5aa6538b86aa5f047771c0ac98cd2aa695609155fd90babe05
        ? ./../types/io.argoproj.workflow.v1alpha1.GitArtifact.dhall
      )
, hdfs =
    None
      (   ./../types/io.argoproj.workflow.v1alpha1.HDFSArtifact.dhall sha256:0fc36b4183103803f2994bfb0103ffae98394027c8e0f6a345ce268854ada0d0
        ? ./../types/io.argoproj.workflow.v1alpha1.HDFSArtifact.dhall
      )
, http =
    None
      (   ./../types/io.argoproj.workflow.v1alpha1.HTTPArtifact.dhall sha256:3a9bace0a27989cfca6ba5c636da776fbdf3d27a57eb7ce6faa4a13fd84169d0
        ? ./../types/io.argoproj.workflow.v1alpha1.HTTPArtifact.dhall
      )
, raw =
    None
      (   ./../types/io.argoproj.workflow.v1alpha1.RawArtifact.dhall sha256:6e4f7d8d87887940f6652276a7ff18f02e63158697d3405735f6bddba1bf996b
        ? ./../types/io.argoproj.workflow.v1alpha1.RawArtifact.dhall
      )
, s3 =
    None
      (   ./../types/io.argoproj.workflow.v1alpha1.S3Artifact.dhall sha256:eac155f333498850a42ad13e07d2e44ddf4a94a39041ca4233056f9efd4d4bc9
        ? ./../types/io.argoproj.workflow.v1alpha1.S3Artifact.dhall
      )
}
