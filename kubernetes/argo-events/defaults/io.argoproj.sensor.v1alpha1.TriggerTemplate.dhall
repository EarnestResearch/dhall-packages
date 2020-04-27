{ source =
      ./io.argoproj.sensor.v1alpha1.ArtifactLocation.dhall sha256:e5d6934549be1bef4b7ccca3580fae5e7f25ef2f9d3b80b2439114db35290fb1
    ? ./io.argoproj.sensor.v1alpha1.ArtifactLocation.dhall
, when =
    None
      (   ./../types/io.argoproj.sensor.v1alpha1.TriggerCondition.dhall sha256:4e394f7cb18c49fb976986624236a3134cbb5c073cf57c880f85b30f41339ee2
        ? ./../types/io.argoproj.sensor.v1alpha1.TriggerCondition.dhall
      )
}
