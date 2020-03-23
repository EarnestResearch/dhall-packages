let k8s =
        ../k8s/1.15.dhall sha256:4bd5939adb0a5fc83d76e0d69aa3c5a30bc1a5af8f9df515f44b6fc59a0a4815
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
