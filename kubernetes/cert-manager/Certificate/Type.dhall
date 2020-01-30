let k8s =
        ../../k8s/1.14.dhall sha256:7839bf40f940757e4d71d3c1b84d878f6a4873c3b2706ae4be307b5991acdcac
      ? ../../k8s/1.14.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../CertificateSpec/Type.dhall sha256:ed3747649bd05267b92392fa7424a6632b68cdb5058d05fb49f3a0c70b23a61f
        ? ../CertificateSpec/Type.dhall
    }
