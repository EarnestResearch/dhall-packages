{ apiVersion = "argoproj.io/v1alpha1"
, kind = "Workflow"
, spec =
      ./io.argoproj.workflow.v1alpha1.WorkflowSpec.dhall sha256:73e721a84f0a1be7f8adee32e02becdde3f64162051ba0fa059f2a364743c2dd
    ? ./io.argoproj.workflow.v1alpha1.WorkflowSpec.dhall
}
