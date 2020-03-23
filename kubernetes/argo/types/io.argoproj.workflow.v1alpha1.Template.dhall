{ archiveLocation :
      ./io.argoproj.workflow.v1alpha1.ArtifactLocation.dhall sha256:fdc777212dca640d5e324cc1cc090fe7bde4496a2ef67d58f81de5c4c419d3e3
    ? ./io.argoproj.workflow.v1alpha1.ArtifactLocation.dhall
, initContainers :
    List
      (   ./io.argoproj.workflow.v1alpha1.UserContainer.dhall sha256:da7065231aecb9e3f7a4975ac9d02c33f63f6cae708999f55b195532f90c3a9d
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
      (   ./io.argoproj.workflow.v1alpha1.UserContainer.dhall sha256:da7065231aecb9e3f7a4975ac9d02c33f63f6cae708999f55b195532f90c3a9d
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
      (   ./io.k8s.api.core.v1.Toleration.dhall sha256:311a6571242358d7b210631d506dc09e89671c2012bee5799c05f0a2c0024d71
        ? ./io.k8s.api.core.v1.Toleration.dhall
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
, container :
    Optional
      (   ./io.k8s.api.core.v1.Container.dhall sha256:ad60df4905ca468fd5134fe0267bf255facc227bc5e8a505257f2d57567a13f2
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
      (   ./io.argoproj.workflow.v1alpha1.ScriptTemplate.dhall sha256:a15f3aba6b20bf67bdf62c06c420bd04fca0acbd75a20afce4ac59a0cbc70638
        ? ./io.argoproj.workflow.v1alpha1.ScriptTemplate.dhall
      )
}
