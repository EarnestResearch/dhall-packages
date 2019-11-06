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
          ../MappingSpec/Type.dhall sha256:b3578474b05cdee48b9140b2bf63a6c62f864dc80b77c7ea97bdb4d6c1155cb6
        ? ../MappingSpec/Type.dhall
    }
