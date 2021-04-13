let k8s =
        ../../k8s/1.15.dhall sha256:9ed8981915875f3bbe08ad7047d92cd181b6ece140af876beecadb8ed079e10a
      ? ../../k8s/1.15.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../CertificateSpec/Type.dhall sha256:bbe59891fa683d44f4c117641af6b2428b3c8a0f0b7d4a57e4a71cc798ac2039
        ? ../CertificateSpec/Type.dhall
    }
