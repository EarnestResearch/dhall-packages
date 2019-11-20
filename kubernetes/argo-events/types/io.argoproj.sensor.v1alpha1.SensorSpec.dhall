{ dependencies :
    List
      (   ./io.argoproj.sensor.v1alpha1.EventDependency.dhall sha256:2e475774c543fc6ca35b5874178b42b8676651f39af853dd00ced266b4150a2e
        ? ./io.argoproj.sensor.v1alpha1.EventDependency.dhall
      )
, dependencyGroups :
    List
      (   ./io.argoproj.sensor.v1alpha1.DependencyGroup.dhall sha256:425a051e95a326d1c520c3453f5610f346a24199fc9e80139697a34c9c1347ae
        ? ./io.argoproj.sensor.v1alpha1.DependencyGroup.dhall
      )
, eventProtocol :
      ./io.argoproj.common.EventProtocol.dhall sha256:64208d24bb507038a09600980ab0f365954978cfe5fa8cecf92f01a7c01448f5
    ? ./io.argoproj.common.EventProtocol.dhall
, template :
      https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.api.core.v1.PodTemplateSpec.dhall sha256:4d56cb0fb1f61ae6aee0a0dd0da929c7caa3275a0b2cb83aedfe7d67b3797aca
    ? https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.api.core.v1.PodTemplateSpec.dhall
, triggers :
    List
      (   ./io.argoproj.sensor.v1alpha1.Trigger.dhall sha256:ef1d89439d9348e29c0b93fdb4ede786a6b7e6ebcda4cccbaa581f5051f1ee2e
        ? ./io.argoproj.sensor.v1alpha1.Trigger.dhall
      )
, circuit : Optional Text
, errorOnFailedRound : Optional Bool
}
