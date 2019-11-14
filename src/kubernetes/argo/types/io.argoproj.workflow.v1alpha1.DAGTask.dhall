{ continueOn : ./io.argoproj.workflow.v1alpha1.ContinueOn.dhall
, dependencies : List Text
, name : Text
, template : Text
, withItems : List ./io.argoproj.workflow.v1alpha1.Item.dhall
, withSequence : ./io.argoproj.workflow.v1alpha1.Sequence.dhall
, arguments : Optional ./io.argoproj.workflow.v1alpha1.Arguments.dhall
, when : Optional Text
, withParam : Optional Text
}
