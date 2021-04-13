{ apiVersion = "argoproj.io/v1alpha1"
, kind = "Workflow"
, spec =
      ./io.argoproj.workflow.v1alpha1.WorkflowSpec.dhall sha256:30c472205f50ae1ddc3b6a9b6e0c26533a0e402e02421afde0236b43496e4094
    ? ./io.argoproj.workflow.v1alpha1.WorkflowSpec.dhall
}
