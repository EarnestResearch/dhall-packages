let k8s = ../k8s/1.14.dhall

in  { namespaceSelector = None k8s.LabelSelector.Type
    , failurePolicy = None Text
    }
