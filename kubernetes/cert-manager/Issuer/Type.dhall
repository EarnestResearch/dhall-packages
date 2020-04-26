let k8s =
        ../../k8s/1.15.dhall sha256:4bd5939adb0a5fc83d76e0d69aa3c5a30bc1a5af8f9df515f44b6fc59a0a4815
      ? ../../k8s/1.15.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../IssuerSpec/Type.dhall sha256:f6653c04550257450fe39a85745801ae60fe643acf09308f0f8b336517f9a4e3
        ? ../IssuerSpec/Type.dhall
    }
