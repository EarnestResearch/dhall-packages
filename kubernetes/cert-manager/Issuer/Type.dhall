let k8s =
        ../../k8s/1.14.dhall sha256:7839bf40f940757e4d71d3c1b84d878f6a4873c3b2706ae4be307b5991acdcac
      ? ../../k8s/1.14.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../IssuerSpec/Type.dhall sha256:b81456f409531fce51beff9dd60ff6b8d1de8227e9bc5077fe7e8061707624ff
        ? ../IssuerSpec/Type.dhall
    }
