{ eventProtocol : ./io.argoproj.common.EventProtocol.dhall
, processorPort : Text
, template :
    https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.api.core.v1.PodTemplateSpec.dhall
, type : Text
, eventSource : Optional Text
, service : Optional ./io.argoproj.common.ServiceTemplateSpec.dhall
, watchers : Optional ./io.argoproj.gateway.v1alpha1.NotificationWatchers.dhall
}
