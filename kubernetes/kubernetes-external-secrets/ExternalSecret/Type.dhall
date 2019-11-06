let k8s =
        ../../k8s/package.dhall sha256:4c9c40f1762e95578c86c3efbccb87ce74ff67c5111a4c92c4393c6d163bb51b
      ? ../../k8s/package.dhall

in  { apiVersion :
        Text
    , kind : Text
    , metadata : k8s.types.ObjectMeta
    , secretDescriptor :
          ../SecretDescriptor.dhall sha256:723bd48b2b27aa12fbd996b865027501b1e7568f5238f45a7171979748c2ec7e
        ? ../SecretDescriptor.dhall
    }
