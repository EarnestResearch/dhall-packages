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
          ../MappingSpecV2/Type.dhall sha256:c79c13128e0ec1984f8929f5e44311fcd611a8c1c3f0253e4758b7d5d8c49a0c
        ? ../MappingSpecV2/Type.dhall
    }
