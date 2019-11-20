{ source =
      ./io.argoproj.sensor.v1alpha1.ArtifactLocation.dhall sha256:0978646dc7f74ee5ecd1cc18c89742d3fecf32297c72b5cc1f6af739204fbf95
    ? ./io.argoproj.sensor.v1alpha1.ArtifactLocation.dhall
, when =
    None
      (   ./../types/io.argoproj.sensor.v1alpha1.TriggerCondition.dhall sha256:4e394f7cb18c49fb976986624236a3134cbb5c073cf57c880f85b30f41339ee2
        ? ./../types/io.argoproj.sensor.v1alpha1.TriggerCondition.dhall
      )
}
