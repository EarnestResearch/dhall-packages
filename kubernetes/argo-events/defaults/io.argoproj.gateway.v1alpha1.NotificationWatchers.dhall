{ gateways =
    [] : List
           (   ./../types/io.argoproj.gateway.v1alpha1.GatewayNotificationWatcher.dhall sha256:0a8593e805770f032241ca46c0d45d76e5d417170b9ecb8182120a1b6104c009
             ? ./../types/io.argoproj.gateway.v1alpha1.GatewayNotificationWatcher.dhall
           )
, sensors =
    [] : List
           (   ./../types/io.argoproj.gateway.v1alpha1.SensorNotificationWatcher.dhall sha256:4efff53aa4ed0ecafcc425dbe6e832e9bbc9019d7b15723688796831d2fe0da4
             ? ./../types/io.argoproj.gateway.v1alpha1.SensorNotificationWatcher.dhall
           )
}
