{-
  Ambassador Mapping
  https://www.getambassador.io/reference/mappings/
  Note: we support only standalone mappings in dhall
-}

let k8s =
        ../../k8s/package.dhall sha256:4159b87d109cd88610c9d440701091d6fdd718d81aba5691e2d6ed7c93fbcd09
      ? ../../k8s/package.dhall

in  { apiVersion :
        Text
    , kind : Text
    , metadata : k8s.types.ObjectMeta
    , spec :
          ../MappingSpec/Type.dhall sha256:b3578474b05cdee48b9140b2bf63a6c62f864dc80b77c7ea97bdb4d6c1155cb6
        ? ../MappingSpec/Type.dhall
    }
