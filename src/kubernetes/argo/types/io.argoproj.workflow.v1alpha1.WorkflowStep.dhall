{ continueOn : ./io.argoproj.workflow.v1alpha1.ContinueOn.dhall
, withItems : List ./io.argoproj.workflow.v1alpha1.Item.dhall
, withSequence : ./io.argoproj.workflow.v1alpha1.Sequence.dhall
, arguments : Optional ./io.argoproj.workflow.v1alpha1.Arguments.dhall
, name : Optional Text
, template : Optional Text
, when : Optional Text
, withParam : Optional Text
}
