{ archiveLocation =
      ./io.argoproj.workflow.v1alpha1.ArtifactLocation.dhall sha256:19c1414613ad266fecc3253d9e37350c666edf88257fad88caaa60d0d1a9c875
    ? ./io.argoproj.workflow.v1alpha1.ArtifactLocation.dhall
, initContainers =
    [] : List
           (   ./../types/io.argoproj.workflow.v1alpha1.UserContainer.dhall sha256:03befb7ae18ffb74c4372b0d358c1155d1ed85839c01cf7a641dd31e0ec148ea
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
           (   ./../types/io.argoproj.workflow.v1alpha1.UserContainer.dhall sha256:03befb7ae18ffb74c4372b0d358c1155d1ed85839c01cf7a641dd31e0ec148ea
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
           (   ./../types/io.k8s.api.core.v1.Toleration.dhall sha256:dd6fffae0dd33d31a761843efdd0cebf2673efd4e9be417d17472fddd3055e42
             ? ./../types/io.k8s.api.core.v1.Toleration.dhall
           )
, volumes =
    [] : List
           (   ./../types/io.k8s.api.core.v1.Volume.dhall sha256:aa2b222238a29017213aabfe42fa65f41b8d1301bc48e4a06ff1cc0cc3be7149
             ? ./../types/io.k8s.api.core.v1.Volume.dhall
           )
, activeDeadlineSeconds = None Natural
, affinity =
    None
      (   ./../types/io.k8s.api.core.v1.Affinity.dhall sha256:bd97be75b0c9c603b8be60ab063f5ddfcc9088db0dde7d0cddb8ff227cdde90a
        ? ./../types/io.k8s.api.core.v1.Affinity.dhall
      )
, container =
    None
      (   ./../types/io.k8s.api.core.v1.Container.dhall sha256:77b5385109379be9fa23ee6d0a576774c9b153b79de9ea1cdd942291cf33dc71
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
      (   ./../types/io.argoproj.workflow.v1alpha1.ScriptTemplate.dhall sha256:d02e19e7135603cbe66030242fba14136c79efc5af881e3e37dda1b16c9faf1d
        ? ./../types/io.argoproj.workflow.v1alpha1.ScriptTemplate.dhall
      )
}
