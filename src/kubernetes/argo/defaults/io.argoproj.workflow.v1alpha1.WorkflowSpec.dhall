{ imagePullSecrets =
    [] : List ./../types/io.k8s.api.core.v1.LocalObjectReference.dhall
, nodeSelector = [] : List { mapKey : Text, mapValue : Text }
, templates = [] : List ./../types/io.argoproj.workflow.v1alpha1.Template.dhall
, tolerations = [] : List ./../types/io.k8s.api.core.v1.Toleration.dhall
, volumeClaimTemplates =
    [] : List ./../types/io.k8s.api.core.v1.PersistentVolumeClaim.dhall
, volumes = [] : List ./../types/io.k8s.api.core.v1.Volume.dhall
, activeDeadlineSeconds = None Natural
, affinity = None ./../types/io.k8s.api.core.v1.Affinity.dhall
, arguments = None ./../types/io.argoproj.workflow.v1alpha1.Arguments.dhall
, dnsConfig = None ./../types/io.k8s.api.core.v1.PodDNSConfig.dhall
, dnsPolicy = None Text
, hostNetwork = None Bool
, onExit = None Text
, parallelism = None Natural
, podPriority = None Natural
, podPriorityClassName = None Text
, priority = None Natural
, schedulerName = None Text
, serviceAccountName = None Text
, suspend = None Bool
, ttlSecondsAfterFinished = None Natural
}
