{ eventProtocol =
    ./io.argoproj.common.EventProtocol.dhall
, eventSource =
    None Text
, service =
    None ./../types/io.argoproj.common.ServiceTemplateSpec.dhall
, watchers =
    None ./../types/io.argoproj.gateway.v1alpha1.NotificationWatchers.dhall
}
