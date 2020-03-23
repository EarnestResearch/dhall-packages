{ imagePullSecrets =
    [] : List
           (   ./../types/io.k8s.api.core.v1.LocalObjectReference.dhall sha256:30bd7e61dae821a9532f640611a37bbebac3dc2ba02b82298a5c295280f1501f
             ? ./../types/io.k8s.api.core.v1.LocalObjectReference.dhall
           )
, nodeSelector = [] : List { mapKey : Text, mapValue : Text }
, templates =
    [] : List
           (   ./../types/io.argoproj.workflow.v1alpha1.Template.dhall sha256:2119e0d70f4120a310eeef38294b05fd507db6961e357c805752c2214942b48c
             ? ./../types/io.argoproj.workflow.v1alpha1.Template.dhall
           )
, tolerations =
    [] : List
           (   ./../types/io.k8s.api.core.v1.Toleration.dhall sha256:311a6571242358d7b210631d506dc09e89671c2012bee5799c05f0a2c0024d71
             ? ./../types/io.k8s.api.core.v1.Toleration.dhall
           )
, volumeClaimTemplates =
    [] : List
           (   ./../types/io.k8s.api.core.v1.PersistentVolumeClaim.dhall sha256:e26ba9b031f0ec56b4bf4f3b307157797845837ce920bd901fb9c3980a747f39
             ? ./../types/io.k8s.api.core.v1.PersistentVolumeClaim.dhall
           )
, volumes =
    [] : List
           (   ./../types/io.k8s.api.core.v1.Volume.dhall sha256:ab9684be899c5d05b164f59cf5a881fe6fe612a0c1369882edd35cd137f5e68b
             ? ./../types/io.k8s.api.core.v1.Volume.dhall
           )
, activeDeadlineSeconds = None Natural
, affinity =
    None
      (   ./../types/io.k8s.api.core.v1.Affinity.dhall sha256:4f3f951ea9faa62f9a9cd77ba0dc7346c02cc1030c5b9f10e15436704968d925
        ? ./../types/io.k8s.api.core.v1.Affinity.dhall
      )
, arguments =
    None
      (   ./../types/io.argoproj.workflow.v1alpha1.Arguments.dhall sha256:3b3500b2bde09bf7a2eccbede95fc8c8daad1992eaef0b71c5d72d01ab2d9117
        ? ./../types/io.argoproj.workflow.v1alpha1.Arguments.dhall
      )
, dnsConfig =
    None
      (   ./../types/io.k8s.api.core.v1.PodDNSConfig.dhall sha256:ca47223f3f3789a2dbbd5264809a0a1b3144b82b31f13e860fd239ca30e76f5a
        ? ./../types/io.k8s.api.core.v1.PodDNSConfig.dhall
      )
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
