{-
  Ambassador Mapping
  https://www.getambassador.io/reference/mappings/
  Note: we support only standalone mappings in dhall
-}

let k8s =
        ../../k8s/1.15.dhall sha256:9ed8981915875f3bbe08ad7047d92cd181b6ece140af876beecadb8ed079e10a
      ? ../../k8s/1.15.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../MappingSpec/Type.dhall sha256:51bfe00fdb0a3d21a747714dc6fab5ceab6a2fbd002436c9968c7f728c849d5f
        ? ../MappingSpec/Type.dhall
    }
