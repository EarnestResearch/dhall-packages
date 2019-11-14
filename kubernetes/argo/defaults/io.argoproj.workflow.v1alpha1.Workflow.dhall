{ apiVersion = "argoproj.io/v1alpha1"
, kind = "Workflow"
, spec =
      ./io.argoproj.workflow.v1alpha1.WorkflowSpec.dhall sha256:23fed14b3cc7b68662d60c24fae28a2d60b5333a25eb66bb3d62d56090ffccfd
    ? ./io.argoproj.workflow.v1alpha1.WorkflowSpec.dhall
}
