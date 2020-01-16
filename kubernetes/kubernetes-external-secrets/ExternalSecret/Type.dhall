let k8s =
        ../../k8s/1.14.dhall sha256:7839bf40f940757e4d71d3c1b84d878f6a4873c3b2706ae4be307b5991acdcac
      ? ../../k8s/1.14.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , secretDescriptor :
          ../SecretDescriptor.dhall sha256:18b8c67891d7abc2ed14004239b24f39cd62748da25ceca73788d29f466c48a2
        ? ../SecretDescriptor.dhall
    }
