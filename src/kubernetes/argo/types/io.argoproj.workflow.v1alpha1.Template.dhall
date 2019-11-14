{ archiveLocation : ./io.argoproj.workflow.v1alpha1.ArtifactLocation.dhall
, initContainers : List ./io.argoproj.workflow.v1alpha1.UserContainer.dhall
, metadata : ./io.argoproj.workflow.v1alpha1.Metadata.dhall
, name : Text
, nodeSelector : List { mapKey : Text, mapValue : Text }
, retryStrategy : ./io.argoproj.workflow.v1alpha1.RetryStrategy.dhall
, sidecars : List ./io.argoproj.workflow.v1alpha1.UserContainer.dhall
, steps : List (List ./io.argoproj.workflow.v1alpha1.WorkflowStep.dhall)
, suspend : ./io.argoproj.workflow.v1alpha1.SuspendTemplate.dhall
, tolerations : List ./io.k8s.api.core.v1.Toleration.dhall
, volumes : List ./io.k8s.api.core.v1.Volume.dhall
, activeDeadlineSeconds : Optional Natural
, affinity : Optional ./io.k8s.api.core.v1.Affinity.dhall
, container : Optional ./io.k8s.api.core.v1.Container.dhall
, daemon : Optional Bool
, dag : Optional ./io.argoproj.workflow.v1alpha1.DAGTemplate.dhall
, inputs : Optional ./io.argoproj.workflow.v1alpha1.Inputs.dhall
, outputs : Optional ./io.argoproj.workflow.v1alpha1.Outputs.dhall
, parallelism : Optional Natural
, priority : Optional Natural
, priorityClassName : Optional Text
, resource : Optional ./io.argoproj.workflow.v1alpha1.ResourceTemplate.dhall
, schedulerName : Optional Text
, script : Optional ./io.argoproj.workflow.v1alpha1.ScriptTemplate.dhall
}
