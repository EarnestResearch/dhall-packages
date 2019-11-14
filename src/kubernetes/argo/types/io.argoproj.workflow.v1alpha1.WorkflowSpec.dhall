{ entrypoint : Text
, imagePullSecrets : List ./io.k8s.api.core.v1.LocalObjectReference.dhall
, nodeSelector : List { mapKey : Text, mapValue : Text }
, templates : List ./io.argoproj.workflow.v1alpha1.Template.dhall
, tolerations : List ./io.k8s.api.core.v1.Toleration.dhall
, volumeClaimTemplates : List ./io.k8s.api.core.v1.PersistentVolumeClaim.dhall
, volumes : List ./io.k8s.api.core.v1.Volume.dhall
, activeDeadlineSeconds : Optional Natural
, affinity : Optional ./io.k8s.api.core.v1.Affinity.dhall
, arguments : Optional ./io.argoproj.workflow.v1alpha1.Arguments.dhall
, dnsConfig : Optional ./io.k8s.api.core.v1.PodDNSConfig.dhall
, dnsPolicy : Optional Text
, hostNetwork : Optional Bool
, onExit : Optional Text
, parallelism : Optional Natural
, podPriority : Optional Natural
, podPriorityClassName : Optional Text
, priority : Optional Natural
, schedulerName : Optional Text
, serviceAccountName : Optional Text
, suspend : Optional Bool
, ttlSecondsAfterFinished : Optional Natural
}
