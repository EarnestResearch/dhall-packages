let k8s =
        ../../k8s/1.15.dhall sha256:9ed8981915875f3bbe08ad7047d92cd181b6ece140af876beecadb8ed079e10a
      ? ../../k8s/1.15.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../ProjectSpec/Type.dhall sha256:290e51c402f3e27ca91228375ce3462cf55b0e8bc395ec6813c3d6137eabdd29
        ? ../ProjectSpec/Type.dhall
    }
