{ dependencies :
    List
      (   ./io.argoproj.sensor.v1alpha1.EventDependency.dhall sha256:999968e4fec01dacd5adde195e67ec343538748208cb57d4d0cfa44d097f328e
        ? ./io.argoproj.sensor.v1alpha1.EventDependency.dhall
      )
, dependencyGroups :
    List
      (   ./io.argoproj.sensor.v1alpha1.DependencyGroup.dhall sha256:425a051e95a326d1c520c3453f5610f346a24199fc9e80139697a34c9c1347ae
        ? ./io.argoproj.sensor.v1alpha1.DependencyGroup.dhall
      )
, eventProtocol :
      ./io.argoproj.common.EventProtocol.dhall sha256:d0232a19cbeb035060087cbf4924b412e02c6677b08e4223d24dccf412dd5ff5
    ? ./io.argoproj.common.EventProtocol.dhall
, template :
      https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.api.core.v1.PodTemplateSpec.dhall sha256:4d56cb0fb1f61ae6aee0a0dd0da929c7caa3275a0b2cb83aedfe7d67b3797aca
    ? https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.api.core.v1.PodTemplateSpec.dhall
, triggers :
    List
      (   ./io.argoproj.sensor.v1alpha1.Trigger.dhall sha256:b299619204344298bf28313fd49730e1fe2ed4bcff2e969d44ca70e5a03f950d
        ? ./io.argoproj.sensor.v1alpha1.Trigger.dhall
      )
, circuit : Optional Text
, errorOnFailedRound : Optional Bool
}
