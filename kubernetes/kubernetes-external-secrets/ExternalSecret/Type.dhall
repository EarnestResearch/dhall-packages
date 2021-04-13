let k8s =
        ../../k8s/1.15.dhall sha256:9ed8981915875f3bbe08ad7047d92cd181b6ece140af876beecadb8ed079e10a
      ? ../../k8s/1.15.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , secretDescriptor :
          ../SecretDescriptor/Type.dhall sha256:d617a70cb22e811f5b6669b856cf37961d9ea5fb897496a3af01f5cb019c5951
        ? ../SecretDescriptor/Type.dhall
    }
