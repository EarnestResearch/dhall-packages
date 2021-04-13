let k8s =
        ../k8s/1.15.dhall sha256:9ed8981915875f3bbe08ad7047d92cd181b6ece140af876beecadb8ed079e10a
      ? ../k8s/1.15.dhall

in  { name : Text
    , namespace : Text
    , imageName : Text
    , namespaceSelector : Optional k8s.LabelSelector.Type
    , port : Natural
    , path : Text
    , failurePolicy : Optional Text
    , rules : List k8s.RuleWithOperations.Type
    }
