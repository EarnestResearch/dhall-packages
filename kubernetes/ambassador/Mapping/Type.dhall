{-
  Ambassador Mapping
  https://www.getambassador.io/reference/mappings/
  Note: we support only standalone mappings in dhall
-}

let k8s =
        ../../k8s/package.dhall sha256:4c9c40f1762e95578c86c3efbccb87ce74ff67c5111a4c92c4393c6d163bb51b
      ? ../../k8s/package.dhall

in  { apiVersion :
        Text
    , kind : Text
    , metadata : k8s.types.ObjectMeta
    , spec :
          ../MappingSpec/Type.dhall sha256:f5b5258caed2a0bb977b54ea36bbb3fe78d9a23cf1d656d9d7d24e92499aa70a
        ? ../MappingSpec/Type.dhall
    }
