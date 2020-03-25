let k8s =
        ../../k8s/1.15.dhall sha256:4bd5939adb0a5fc83d76e0d69aa3c5a30bc1a5af8f9df515f44b6fc59a0a4815
      ? ../../k8s/1.15.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../CertificateSpec/Type.dhall sha256:bbe59891fa683d44f4c117641af6b2428b3c8a0f0b7d4a57e4a71cc798ac2039
        ? ../CertificateSpec/Type.dhall
    }
