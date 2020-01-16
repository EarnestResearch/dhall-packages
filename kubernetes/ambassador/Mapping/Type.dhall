{-
  Ambassador Mapping
  https://www.getambassador.io/reference/mappings/
  Note: we support only standalone mappings in dhall
-}

let k8s =
        ../../k8s/1.14.dhall sha256:7839bf40f940757e4d71d3c1b84d878f6a4873c3b2706ae4be307b5991acdcac
      ? ../../k8s/1.14.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../MappingSpec/Type.dhall sha256:51bfe00fdb0a3d21a747714dc6fab5ceab6a2fbd002436c9968c7f728c849d5f
        ? ../MappingSpec/Type.dhall
    }
