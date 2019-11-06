let k8s =
        ../../k8s/package.dhall sha256:4c9c40f1762e95578c86c3efbccb87ce74ff67c5111a4c92c4393c6d163bb51b
      ? ../../k8s/package.dhall

in  { apiVersion :
        Text
    , kind : Text
    , metadata : k8s.types.ObjectMeta
    , secretDescriptor :
          ../SecretDescriptor.dhall sha256:d2bcc74a4c167e86c36ecf394f311728f7194948c903f35e9b16355957ca6e38
        ? ../SecretDescriptor.dhall
    }
