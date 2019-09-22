let k8s =
        ../../k8s/package.dhall sha256:4c9c40f1762e95578c86c3efbccb87ce74ff67c5111a4c92c4393c6d163bb51b
      ? ../../k8s/package.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.types.ObjectMeta
    , spec : { ca : { secretName : Text } }
    }
