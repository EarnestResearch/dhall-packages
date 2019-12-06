{-
  Ambassador AuthService
  https://www.getambassador.io/reference/services/auth-service/
-}

let k8s =
        ../../k8s/package.dhall sha256:4159b87d109cd88610c9d440701091d6fdd718d81aba5691e2d6ed7c93fbcd09
      ? ../../k8s/package.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.types.ObjectMeta
    , spec :
          ../AuthServiceSpec/Type.dhall sha256:0088513c5510633ccf632eb63d54fffb7a8236294258f8b50167a0b52d007181
        ? ../AuthServiceSpec/Type.dhall
    }
