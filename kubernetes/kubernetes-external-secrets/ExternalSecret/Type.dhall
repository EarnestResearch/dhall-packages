let k8s =
        ../../k8s/1.14.dhall sha256:7839bf40f940757e4d71d3c1b84d878f6a4873c3b2706ae4be307b5991acdcac
      ? ../../k8s/1.14.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , secretDescriptor :
          ../SecretDescriptor.dhall sha256:723bd48b2b27aa12fbd996b865027501b1e7568f5238f45a7171979748c2ec7e
        ? ../SecretDescriptor.dhall
    }
