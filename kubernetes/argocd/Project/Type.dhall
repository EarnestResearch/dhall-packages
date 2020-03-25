let k8s =
        ../../k8s/1.15.dhall sha256:4bd5939adb0a5fc83d76e0d69aa3c5a30bc1a5af8f9df515f44b6fc59a0a4815
      ? ../../k8s/1.15.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../ProjectSpec/Type.dhall sha256:290e51c402f3e27ca91228375ce3462cf55b0e8bc395ec6813c3d6137eabdd29
        ? ../ProjectSpec/Type.dhall
    }
