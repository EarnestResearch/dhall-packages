let k8s = ../k8s/1.14.dhall

in  { name : Text
    , namespace : Text
    , imageName : Text
    , namespaceSelector : Optional k8s.LabelSelector.Type
    , port : Natural
    , path : Text
    , failurePolicy : Optional Text
    , rules : List k8s.RuleWithOperations.Type
    }
