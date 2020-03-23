let k8s =
        ../../k8s/1.15.dhall sha256:4bd5939adb0a5fc83d76e0d69aa3c5a30bc1a5af8f9df515f44b6fc59a0a4815
      ? ../../k8s/1.15.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , secretDescriptor :
          ../SecretDescriptor/Type.dhall sha256:d617a70cb22e811f5b6669b856cf37961d9ea5fb897496a3af01f5cb019c5951
        ? ../SecretDescriptor/Type.dhall
    }
