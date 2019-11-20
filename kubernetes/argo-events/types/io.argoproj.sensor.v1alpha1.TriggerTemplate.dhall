{ name : Text
, source :
      ./io.argoproj.sensor.v1alpha1.ArtifactLocation.dhall sha256:8a4c2d6efbc7024e887299f8c566edb3c0a3b7d458a14f9a3b94eb36739416ed
    ? ./io.argoproj.sensor.v1alpha1.ArtifactLocation.dhall
, when :
    Optional
      (   ./io.argoproj.sensor.v1alpha1.TriggerCondition.dhall sha256:4e394f7cb18c49fb976986624236a3134cbb5c073cf57c880f85b30f41339ee2
        ? ./io.argoproj.sensor.v1alpha1.TriggerCondition.dhall
      )
}
