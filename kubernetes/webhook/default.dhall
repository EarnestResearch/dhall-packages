let k8s =
        ../k8s/1.14.dhall sha256:7839bf40f940757e4d71d3c1b84d878f6a4873c3b2706ae4be307b5991acdcac
      ? ../k8s/1.14.dhall

in  { namespaceSelector = None k8s.LabelSelector.Type
    , failurePolicy = None Text
    }
