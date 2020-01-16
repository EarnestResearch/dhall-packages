{-
  Ambassador AuthService
  https://www.getambassador.io/reference/services/auth-service/
-}

let k8s =
        ../../k8s/1.14.dhall sha256:7839bf40f940757e4d71d3c1b84d878f6a4873c3b2706ae4be307b5991acdcac
      ? ../../k8s/1.14.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../AuthServiceSpec/Type.dhall sha256:0088513c5510633ccf632eb63d54fffb7a8236294258f8b50167a0b52d007181
        ? ../AuthServiceSpec/Type.dhall
    }
