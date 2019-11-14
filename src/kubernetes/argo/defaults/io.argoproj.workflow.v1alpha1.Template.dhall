{ archiveLocation = ./io.argoproj.workflow.v1alpha1.ArtifactLocation.dhall
, initContainers =
    [] : List ./../types/io.argoproj.workflow.v1alpha1.UserContainer.dhall
, metadata = ./io.argoproj.workflow.v1alpha1.Metadata.dhall
, nodeSelector = [] : List { mapKey : Text, mapValue : Text }
, retryStrategy = ./io.argoproj.workflow.v1alpha1.RetryStrategy.dhall
, sidecars =
    [] : List ./../types/io.argoproj.workflow.v1alpha1.UserContainer.dhall
, steps =
    [] : List (List ./../types/io.argoproj.workflow.v1alpha1.WorkflowStep.dhall)
, suspend = ./io.argoproj.workflow.v1alpha1.SuspendTemplate.dhall
, tolerations = [] : List ./../types/io.k8s.api.core.v1.Toleration.dhall
, volumes = [] : List ./../types/io.k8s.api.core.v1.Volume.dhall
, activeDeadlineSeconds = None Natural
, affinity = None ./../types/io.k8s.api.core.v1.Affinity.dhall
, container = None ./../types/io.k8s.api.core.v1.Container.dhall
, daemon = None Bool
, dag = None ./../types/io.argoproj.workflow.v1alpha1.DAGTemplate.dhall
, inputs = None ./../types/io.argoproj.workflow.v1alpha1.Inputs.dhall
, outputs = None ./../types/io.argoproj.workflow.v1alpha1.Outputs.dhall
, parallelism = None Natural
, priority = None Natural
, priorityClassName = None Text
, resource =
    None ./../types/io.argoproj.workflow.v1alpha1.ResourceTemplate.dhall
, schedulerName = None Text
, script = None ./../types/io.argoproj.workflow.v1alpha1.ScriptTemplate.dhall
}
