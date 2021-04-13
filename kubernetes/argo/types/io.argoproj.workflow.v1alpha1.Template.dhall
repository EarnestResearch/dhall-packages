{ archiveLocation :
      ./io.argoproj.workflow.v1alpha1.ArtifactLocation.dhall sha256:fdc777212dca640d5e324cc1cc090fe7bde4496a2ef67d58f81de5c4c419d3e3
    ? ./io.argoproj.workflow.v1alpha1.ArtifactLocation.dhall
, initContainers :
    List
      (   ./io.argoproj.workflow.v1alpha1.UserContainer.dhall sha256:03befb7ae18ffb74c4372b0d358c1155d1ed85839c01cf7a641dd31e0ec148ea
        ? ./io.argoproj.workflow.v1alpha1.UserContainer.dhall
      )
, metadata :
      ./io.argoproj.workflow.v1alpha1.Metadata.dhall sha256:a6f9d66d4cc84ee447b51289ba29a925ff9858aff84f6c93ec05bfdc582d2fef
    ? ./io.argoproj.workflow.v1alpha1.Metadata.dhall
, name : Text
, nodeSelector : List { mapKey : Text, mapValue : Text }
, retryStrategy :
      ./io.argoproj.workflow.v1alpha1.RetryStrategy.dhall sha256:677d4692ec2d94daa424da3f56ed3360bc0ca3f68e9075a209d411abaf932f5c
    ? ./io.argoproj.workflow.v1alpha1.RetryStrategy.dhall
, sidecars :
    List
      (   ./io.argoproj.workflow.v1alpha1.UserContainer.dhall sha256:03befb7ae18ffb74c4372b0d358c1155d1ed85839c01cf7a641dd31e0ec148ea
        ? ./io.argoproj.workflow.v1alpha1.UserContainer.dhall
      )
, steps :
    List
      ( List
          (   ./io.argoproj.workflow.v1alpha1.WorkflowStep.dhall sha256:0664ec08b573d06aef0b726697cc76ec5e0ee0a606e7e2bd3337cb7ee060d06f
            ? ./io.argoproj.workflow.v1alpha1.WorkflowStep.dhall
          )
      )
, suspend :
      ./io.argoproj.workflow.v1alpha1.SuspendTemplate.dhall sha256:0912602a19e01dcff30f351958d2d9b69519c9be61b57b1b32a2a569bf8bf5f9
    ? ./io.argoproj.workflow.v1alpha1.SuspendTemplate.dhall
, tolerations :
    List
      (   ./io.k8s.api.core.v1.Toleration.dhall sha256:dd6fffae0dd33d31a761843efdd0cebf2673efd4e9be417d17472fddd3055e42
        ? ./io.k8s.api.core.v1.Toleration.dhall
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
, container :
    Optional
      (   ./io.k8s.api.core.v1.Container.dhall sha256:77b5385109379be9fa23ee6d0a576774c9b153b79de9ea1cdd942291cf33dc71
        ? ./io.k8s.api.core.v1.Container.dhall
      )
, daemon : Optional Bool
, dag :
    Optional
      (   ./io.argoproj.workflow.v1alpha1.DAGTemplate.dhall sha256:c06fd11c384671ca6cd89381771dff717b7c348fc11bfcb8520c3910356c7978
        ? ./io.argoproj.workflow.v1alpha1.DAGTemplate.dhall
      )
, inputs :
    Optional
      (   ./io.argoproj.workflow.v1alpha1.Inputs.dhall sha256:3b3500b2bde09bf7a2eccbede95fc8c8daad1992eaef0b71c5d72d01ab2d9117
        ? ./io.argoproj.workflow.v1alpha1.Inputs.dhall
      )
, outputs :
    Optional
      (   ./io.argoproj.workflow.v1alpha1.Outputs.dhall sha256:6a95ec8e7e3379c389a554d22b51535fdf3515cb96f38207acf005e842980348
        ? ./io.argoproj.workflow.v1alpha1.Outputs.dhall
      )
, parallelism : Optional Natural
, priority : Optional Natural
, priorityClassName : Optional Text
, resource :
    Optional
      (   ./io.argoproj.workflow.v1alpha1.ResourceTemplate.dhall sha256:8397e134275812c656f5b29a936cf859b85730b0fcabe42f3ea4231614d9a2e3
        ? ./io.argoproj.workflow.v1alpha1.ResourceTemplate.dhall
      )
, schedulerName : Optional Text
, script :
    Optional
      (   ./io.argoproj.workflow.v1alpha1.ScriptTemplate.dhall sha256:d02e19e7135603cbe66030242fba14136c79efc5af881e3e37dda1b16c9faf1d
        ? ./io.argoproj.workflow.v1alpha1.ScriptTemplate.dhall
      )
}
