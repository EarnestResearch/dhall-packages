{ name : Text
, source :
      ./io.argoproj.sensor.v1alpha1.ArtifactLocation.dhall sha256:4bcca005c30e32540574e239fd62e8e7f3f3ca16127dbfc8fb3dc18a57aa050a
    ? ./io.argoproj.sensor.v1alpha1.ArtifactLocation.dhall
, when :
    Optional
      (   ./io.argoproj.sensor.v1alpha1.TriggerCondition.dhall sha256:4e394f7cb18c49fb976986624236a3134cbb5c073cf57c880f85b30f41339ee2
        ? ./io.argoproj.sensor.v1alpha1.TriggerCondition.dhall
      )
, group : Text
, version : Text
, resource : Text
}
