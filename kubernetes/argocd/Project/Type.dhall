let k8s =
        ../../k8s/1.14.dhall sha256:7839bf40f940757e4d71d3c1b84d878f6a4873c3b2706ae4be307b5991acdcac
      ? ../../k8s/1.14.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../ProjectSpec/Type.dhall sha256:290e51c402f3e27ca91228375ce3462cf55b0e8bc395ec6813c3d6137eabdd29
        ? ../ProjectSpec/Type.dhall
    }
