{ eventProtocol :
      ./io.argoproj.common.EventProtocol.dhall sha256:d0232a19cbeb035060087cbf4924b412e02c6677b08e4223d24dccf412dd5ff5
    ? ./io.argoproj.common.EventProtocol.dhall
, processorPort : Text
, template :
      https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.api.core.v1.PodTemplateSpec.dhall sha256:4d56cb0fb1f61ae6aee0a0dd0da929c7caa3275a0b2cb83aedfe7d67b3797aca
    ? https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.api.core.v1.PodTemplateSpec.dhall
, type : Text
, eventSource : Optional Text
, service :
    Optional
      (   ./io.argoproj.common.ServiceTemplateSpec.dhall sha256:ef06209b28bc207a40a2cc0bbfdc69448437b0775e7c5a6401bcb1c46c023d37
        ? ./io.argoproj.common.ServiceTemplateSpec.dhall
      )
, watchers :
    Optional
      (   ./io.argoproj.gateway.v1alpha1.NotificationWatchers.dhall sha256:c47273f6168c3b077eecdf35188a3b42fe998d7c236d82d1b1e2dc30fc36b8ce
        ? ./io.argoproj.gateway.v1alpha1.NotificationWatchers.dhall
      )
}
