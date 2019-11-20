{ dependencies =
    [] : List
           (   ./../types/io.argoproj.sensor.v1alpha1.EventDependency.dhall sha256:2e475774c543fc6ca35b5874178b42b8676651f39af853dd00ced266b4150a2e
             ? ./../types/io.argoproj.sensor.v1alpha1.EventDependency.dhall
           )
, dependencyGroups =
    [] : List
           (   ./../types/io.argoproj.sensor.v1alpha1.DependencyGroup.dhall sha256:425a051e95a326d1c520c3453f5610f346a24199fc9e80139697a34c9c1347ae
             ? ./../types/io.argoproj.sensor.v1alpha1.DependencyGroup.dhall
           )
, eventProtocol =
      ./io.argoproj.common.EventProtocol.dhall sha256:595717e9898866ffc565bbba97992241804679d9af1b2ae7240eb92edafb4377
    ? ./io.argoproj.common.EventProtocol.dhall
, triggers =
    [] : List
           (   ./../types/io.argoproj.sensor.v1alpha1.Trigger.dhall sha256:ef1d89439d9348e29c0b93fdb4ede786a6b7e6ebcda4cccbaa581f5051f1ee2e
             ? ./../types/io.argoproj.sensor.v1alpha1.Trigger.dhall
           )
, circuit = None Text
, errorOnFailedRound = None Bool
}
