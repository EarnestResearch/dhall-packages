{ spec =
      ./io.argoproj.sensor.v1alpha1.SensorSpec.dhall sha256:e3462106e552d0d338751b4defdb77d8665d453623666d3f1a77e7d984f2adbf
    ? ./io.argoproj.sensor.v1alpha1.SensorSpec.dhall
, status =
    None
      (   ../types/io.argoproj.sensor.v1alpha1.SensorStatus.dhall sha256:a7a5b93d43239663c5da523754c1a34d8e58172a934370427253c2a96dfc0acc
        ? ../types/io.argoproj.sensor.v1alpha1.SensorStatus.dhall
      )
, apiVersion = "argoproj.io/v1alpha1"
, kind = "Sensor"
}
