{ spec =
      ./io.argoproj.sensor.v1alpha1.SensorSpec.dhall sha256:2dbe56695af8c47c98348ed01d0767ee197455e72b505dc0c6550968f8d8ffdf
    ? ./io.argoproj.sensor.v1alpha1.SensorSpec.dhall
, status =
    None
      (   ../types/io.argoproj.sensor.v1alpha1.SensorStatus.dhall sha256:a7a5b93d43239663c5da523754c1a34d8e58172a934370427253c2a96dfc0acc
        ? ../types/io.argoproj.sensor.v1alpha1.SensorStatus.dhall
      )
, apiVersion = "argoproj.io/v1alpha1"
, kind = "Sensor"
}
