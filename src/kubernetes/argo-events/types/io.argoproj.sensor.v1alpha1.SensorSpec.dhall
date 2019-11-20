{ dependencies :
    List ./io.argoproj.sensor.v1alpha1.EventDependency.dhall
, dependencyGroups :
    List ./io.argoproj.sensor.v1alpha1.DependencyGroup.dhall
, eventProtocol :
    ./io.argoproj.common.EventProtocol.dhall
, template :
    https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.api.core.v1.PodTemplateSpec.dhall
, triggers :
    List ./io.argoproj.sensor.v1alpha1.Trigger.dhall
, circuit :
    Optional Text
, errorOnFailedRound :
    Optional Bool
}
