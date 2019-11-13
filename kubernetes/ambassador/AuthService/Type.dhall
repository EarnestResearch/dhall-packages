{-
  Ambassador AuthService
  https://www.getambassador.io/reference/services/auth-service/
-}

let k8s =
        ../../k8s/package.dhall sha256:4c9c40f1762e95578c86c3efbccb87ce74ff67c5111a4c92c4393c6d163bb51b
      ? ../../k8s/package.dhall

in  { apiVersion :
        Text
    , kind : Text
    , metadata : k8s.types.ObjectMeta
    , spec :
          ../AuthServiceSpec/Type.dhall sha256:0088513c5510633ccf632eb63d54fffb7a8236294258f8b50167a0b52d007181
        ? ../AuthServiceSpec/Type.dhall
    }
