let k8s =
        ../../k8s/1.15.dhall sha256:4bd5939adb0a5fc83d76e0d69aa3c5a30bc1a5af8f9df515f44b6fc59a0a4815
      ? ../../k8s/1.15.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../IssuerSpec/Type.dhall sha256:a444f78e67974acf5936a24860a1913872122003e42732c6c84391f00dc7d2df
        ? ../IssuerSpec/Type.dhall
    }
