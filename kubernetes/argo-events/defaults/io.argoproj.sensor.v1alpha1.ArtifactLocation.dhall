{ file =
      ./io.argoproj.sensor.v1alpha1.FileArtifact.dhall sha256:c3720062b9d3e2f4e6da3f1ca38f284725a2f80cdbcf01bf4538449121714abf
    ? ./io.argoproj.sensor.v1alpha1.FileArtifact.dhall
, configmap =
    None
      (   ./../types/io.argoproj.sensor.v1alpha1.ConfigmapArtifact.dhall sha256:255d3dbf0f6eb71e5099dafce13742e2e3f76614c4b9c33fb543f7485029741d
        ? ./../types/io.argoproj.sensor.v1alpha1.ConfigmapArtifact.dhall
      )
, git =
    None
      (   ./../types/io.argoproj.sensor.v1alpha1.GitArtifact.dhall sha256:0ccd47905e9850731045ad7ffcc45c0c81daa7ca700224b568ab544aa69eb31b
        ? ./../types/io.argoproj.sensor.v1alpha1.GitArtifact.dhall
      )
, inline = None Text
, resource =
    None
      (   https://prelude.dhall-lang.org/v12.0.0/JSON/Type sha256:5adb234f5868a5b0eddeb034d690aaba8cb94ea20d0d557003e90334fff6be3e
        ? https://prelude.dhall-lang.org/v12.0.0/JSON/Type
      )
, s3 =
    None
      (   ./../types/io.argoproj.common.S3Artifact.dhall sha256:82bbf9011dd3739bc448f1c45c32fdf5a257ec82e5f82b4f3320bb6baff89365
        ? ./../types/io.argoproj.common.S3Artifact.dhall
      )
, url =
    None
      (   ./../types/io.argoproj.sensor.v1alpha1.URLArtifact.dhall sha256:26efbbfd783deadaf56afff4a372a81588dda6d82aa9d0b88f23224853a72f42
        ? ./../types/io.argoproj.sensor.v1alpha1.URLArtifact.dhall
      )
}
