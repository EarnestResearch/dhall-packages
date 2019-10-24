{ entrypoint : Text
, imagePullSecrets :
    List
      (   ./io.k8s.api.core.v1.LocalObjectReference.dhall sha256:30bd7e61dae821a9532f640611a37bbebac3dc2ba02b82298a5c295280f1501f
        ? ./io.k8s.api.core.v1.LocalObjectReference.dhall
      )
, nodeSelector : List { mapKey : Text, mapValue : Text }
, templates :
    List
      (   ./io.argoproj.workflow.v1alpha1.Template.dhall sha256:331df1402df98f077c72cd7a40580f5369ca3617d9a499ea92c1d1fe99ed5092
        ? ./io.argoproj.workflow.v1alpha1.Template.dhall
      )
, tolerations :
    List
      (   ./io.k8s.api.core.v1.Toleration.dhall sha256:311a6571242358d7b210631d506dc09e89671c2012bee5799c05f0a2c0024d71
        ? ./io.k8s.api.core.v1.Toleration.dhall
      )
, volumeClaimTemplates :
    List
      (   ./io.k8s.api.core.v1.PersistentVolumeClaim.dhall sha256:bb3a244115c928544d8287f9fbce5080ac837832b6f08dccebbda7eb5d29e843
        ? ./io.k8s.api.core.v1.PersistentVolumeClaim.dhall
      )
, volumes :
    List
      (   ./io.k8s.api.core.v1.Volume.dhall sha256:ab9684be899c5d05b164f59cf5a881fe6fe612a0c1369882edd35cd137f5e68b
        ? ./io.k8s.api.core.v1.Volume.dhall
      )
, activeDeadlineSeconds : Optional Natural
, affinity :
    Optional
      (   ./io.k8s.api.core.v1.Affinity.dhall sha256:4f3f951ea9faa62f9a9cd77ba0dc7346c02cc1030c5b9f10e15436704968d925
        ? ./io.k8s.api.core.v1.Affinity.dhall
      )
, arguments :
    Optional
      (   ./io.argoproj.workflow.v1alpha1.Arguments.dhall sha256:3b3500b2bde09bf7a2eccbede95fc8c8daad1992eaef0b71c5d72d01ab2d9117
        ? ./io.argoproj.workflow.v1alpha1.Arguments.dhall
      )
, dnsConfig :
    Optional
      (   ./io.k8s.api.core.v1.PodDNSConfig.dhall sha256:ca47223f3f3789a2dbbd5264809a0a1b3144b82b31f13e860fd239ca30e76f5a
        ? ./io.k8s.api.core.v1.PodDNSConfig.dhall
      )
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
