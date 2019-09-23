let k8s =
        ../../k8s/package.dhall sha256:4c9c40f1762e95578c86c3efbccb87ce74ff67c5111a4c92c4393c6d163bb51b
      ? ../../k8s/package.dhall

in  { apiVersion :
        Text
    , kind :
        Text
    , metadata :
        k8s.types.ObjectMeta
    , secretDescriptor :
          ../SecretDescriptor/Type.dhall sha256:dee93731d857bdcfb1bd4e8f30f429c119e19fb537f01029d11bc2ee11a5a514
        ? ../SecretDescriptor/Type.dhall
    }
