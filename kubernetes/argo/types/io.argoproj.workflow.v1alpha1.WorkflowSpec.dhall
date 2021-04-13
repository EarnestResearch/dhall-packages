{ entrypoint : Text
, imagePullSecrets :
    List
      (   ./io.k8s.api.core.v1.LocalObjectReference.dhall sha256:30bd7e61dae821a9532f640611a37bbebac3dc2ba02b82298a5c295280f1501f
        ? ./io.k8s.api.core.v1.LocalObjectReference.dhall
      )
, nodeSelector : List { mapKey : Text, mapValue : Text }
, templates :
    List
      (   ./io.argoproj.workflow.v1alpha1.Template.dhall sha256:89f75f15a28864f4fbfa2a61e0d0d018a065c06af0fff1413effb1a07cf9095b
        ? ./io.argoproj.workflow.v1alpha1.Template.dhall
      )
, tolerations :
    List
      (   ./io.k8s.api.core.v1.Toleration.dhall sha256:dd6fffae0dd33d31a761843efdd0cebf2673efd4e9be417d17472fddd3055e42
        ? ./io.k8s.api.core.v1.Toleration.dhall
      )
, volumeClaimTemplates :
    List
      (   ./io.k8s.api.core.v1.PersistentVolumeClaim.dhall sha256:a1abe02164340a85c823cc99b149a753674fa4472288f25cdb434e5656669fdd
        ? ./io.k8s.api.core.v1.PersistentVolumeClaim.dhall
      )
, volumes :
    List
      (   ./io.k8s.api.core.v1.Volume.dhall sha256:aa2b222238a29017213aabfe42fa65f41b8d1301bc48e4a06ff1cc0cc3be7149
        ? ./io.k8s.api.core.v1.Volume.dhall
      )
, activeDeadlineSeconds : Optional Natural
, affinity :
    Optional
      (   ./io.k8s.api.core.v1.Affinity.dhall sha256:bd97be75b0c9c603b8be60ab063f5ddfcc9088db0dde7d0cddb8ff227cdde90a
        ? ./io.k8s.api.core.v1.Affinity.dhall
      )
, arguments :
    Optional
      (   ./io.argoproj.workflow.v1alpha1.Arguments.dhall sha256:3b3500b2bde09bf7a2eccbede95fc8c8daad1992eaef0b71c5d72d01ab2d9117
        ? ./io.argoproj.workflow.v1alpha1.Arguments.dhall
      )
, dnsConfig :
    Optional
      (   ./io.k8s.api.core.v1.PodDNSConfig.dhall sha256:20fbee72ae47d13233a8bc75a5e701f9cb1ba6fbc60ce66378fab02c38f3a05b
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
