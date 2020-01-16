let k8s =
        ../../k8s/1.14.dhall sha256:7839bf40f940757e4d71d3c1b84d878f6a4873c3b2706ae4be307b5991acdcac
      ? ../../k8s/1.14.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , secretDescriptor :
          ../SecretDescriptor/Type.dhall sha256:d617a70cb22e811f5b6669b856cf37961d9ea5fb897496a3af01f5cb019c5951
        ? ../SecretDescriptor/Type.dhall
    }
