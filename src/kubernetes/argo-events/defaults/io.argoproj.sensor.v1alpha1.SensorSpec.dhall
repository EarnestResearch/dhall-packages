{ dependencies =
    [] : List ./../types/io.argoproj.sensor.v1alpha1.EventDependency.dhall
, dependencyGroups =
    [] : List ./../types/io.argoproj.sensor.v1alpha1.DependencyGroup.dhall
, eventProtocol = ./io.argoproj.common.EventProtocol.dhall
, triggers = [] : List ./../types/io.argoproj.sensor.v1alpha1.Trigger.dhall
, circuit = None Text
, errorOnFailedRound = None Bool
}
