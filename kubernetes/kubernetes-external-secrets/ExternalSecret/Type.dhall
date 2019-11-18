let k8s =
        ../../k8s/package.dhall sha256:4159b87d109cd88610c9d440701091d6fdd718d81aba5691e2d6ed7c93fbcd09
      ? ../../k8s/package.dhall

in  { apiVersion :
        Text
    , kind : Text
    , metadata : k8s.types.ObjectMeta
    , secretDescriptor :
          ../SecretDescriptor.dhall sha256:723bd48b2b27aa12fbd996b865027501b1e7568f5238f45a7171979748c2ec7e
        ? ../SecretDescriptor.dhall
    }
