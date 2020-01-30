let k8s =
        ../../k8s/1.14.dhall sha256:7839bf40f940757e4d71d3c1b84d878f6a4873c3b2706ae4be307b5991acdcac
      ? ../../k8s/1.14.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../CertificateSpec/Type.dhall sha256:bbe59891fa683d44f4c117641af6b2428b3c8a0f0b7d4a57e4a71cc798ac2039
        ? ../CertificateSpec/Type.dhall
    }
