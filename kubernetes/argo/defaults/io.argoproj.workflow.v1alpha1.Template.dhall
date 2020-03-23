{ archiveLocation =
      ./io.argoproj.workflow.v1alpha1.ArtifactLocation.dhall sha256:19c1414613ad266fecc3253d9e37350c666edf88257fad88caaa60d0d1a9c875
    ? ./io.argoproj.workflow.v1alpha1.ArtifactLocation.dhall
, initContainers =
    [] : List
           (   ./../types/io.argoproj.workflow.v1alpha1.UserContainer.dhall sha256:da7065231aecb9e3f7a4975ac9d02c33f63f6cae708999f55b195532f90c3a9d
             ? ./../types/io.argoproj.workflow.v1alpha1.UserContainer.dhall
           )
, metadata =
      ./io.argoproj.workflow.v1alpha1.Metadata.dhall sha256:cde3208434dd932a1783d1e3e5fceb14c92394883465d82521bfe5840e1bdd6c
    ? ./io.argoproj.workflow.v1alpha1.Metadata.dhall
, nodeSelector = [] : List { mapKey : Text, mapValue : Text }
, retryStrategy =
      ./io.argoproj.workflow.v1alpha1.RetryStrategy.dhall sha256:226e8b696bbe18094103e614b0d11721d611762c8c546f5d67e7f888476b0736
    ? ./io.argoproj.workflow.v1alpha1.RetryStrategy.dhall
, sidecars =
    [] : List
           (   ./../types/io.argoproj.workflow.v1alpha1.UserContainer.dhall sha256:da7065231aecb9e3f7a4975ac9d02c33f63f6cae708999f55b195532f90c3a9d
             ? ./../types/io.argoproj.workflow.v1alpha1.UserContainer.dhall
           )
, steps =
    [] : List
           ( List
               (   ./../types/io.argoproj.workflow.v1alpha1.WorkflowStep.dhall sha256:0664ec08b573d06aef0b726697cc76ec5e0ee0a606e7e2bd3337cb7ee060d06f
                 ? ./../types/io.argoproj.workflow.v1alpha1.WorkflowStep.dhall
               )
           )
, suspend =
      ./io.argoproj.workflow.v1alpha1.SuspendTemplate.dhall sha256:9bb9dcb5bf6f795291686f59383bcd01c8e79b87fc3fb63351d46dea100ac51b
    ? ./io.argoproj.workflow.v1alpha1.SuspendTemplate.dhall
, tolerations =
    [] : List
           (   ./../types/io.k8s.api.core.v1.Toleration.dhall sha256:311a6571242358d7b210631d506dc09e89671c2012bee5799c05f0a2c0024d71
             ? ./../types/io.k8s.api.core.v1.Toleration.dhall
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
, container =
    None
      (   ./../types/io.k8s.api.core.v1.Container.dhall sha256:ad60df4905ca468fd5134fe0267bf255facc227bc5e8a505257f2d57567a13f2
        ? ./../types/io.k8s.api.core.v1.Container.dhall
      )
, daemon = None Bool
, dag =
    None
      (   ./../types/io.argoproj.workflow.v1alpha1.DAGTemplate.dhall sha256:c06fd11c384671ca6cd89381771dff717b7c348fc11bfcb8520c3910356c7978
        ? ./../types/io.argoproj.workflow.v1alpha1.DAGTemplate.dhall
      )
, inputs =
    None
      (   ./../types/io.argoproj.workflow.v1alpha1.Inputs.dhall sha256:3b3500b2bde09bf7a2eccbede95fc8c8daad1992eaef0b71c5d72d01ab2d9117
        ? ./../types/io.argoproj.workflow.v1alpha1.Inputs.dhall
      )
, outputs =
    None
      (   ./../types/io.argoproj.workflow.v1alpha1.Outputs.dhall sha256:6a95ec8e7e3379c389a554d22b51535fdf3515cb96f38207acf005e842980348
        ? ./../types/io.argoproj.workflow.v1alpha1.Outputs.dhall
      )
, parallelism = None Natural
, priority = None Natural
, priorityClassName = None Text
, resource =
    None
      (   ./../types/io.argoproj.workflow.v1alpha1.ResourceTemplate.dhall sha256:8397e134275812c656f5b29a936cf859b85730b0fcabe42f3ea4231614d9a2e3
        ? ./../types/io.argoproj.workflow.v1alpha1.ResourceTemplate.dhall
      )
, schedulerName = None Text
, script =
    None
      (   ./../types/io.argoproj.workflow.v1alpha1.ScriptTemplate.dhall sha256:a15f3aba6b20bf67bdf62c06c420bd04fca0acbd75a20afce4ac59a0cbc70638
        ? ./../types/io.argoproj.workflow.v1alpha1.ScriptTemplate.dhall
      )
}
