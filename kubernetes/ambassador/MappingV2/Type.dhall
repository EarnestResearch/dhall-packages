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
          ../MappingSpecV2/Type.dhall sha256:c79c13128e0ec1984f8929f5e44311fcd611a8c1c3f0253e4758b7d5d8c49a0c
        ? ../MappingSpecV2/Type.dhall
    }
