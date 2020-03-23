let k8s =
        ../k8s/1.15.dhall sha256:4bd5939adb0a5fc83d76e0d69aa3c5a30bc1a5af8f9df515f44b6fc59a0a4815
      ? ../k8s/1.15.dhall

in  { namespaceSelector = None k8s.LabelSelector.Type
    , failurePolicy = None Text
    }
