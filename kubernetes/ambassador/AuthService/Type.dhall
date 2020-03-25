{-
  Ambassador AuthService
  https://www.getambassador.io/reference/services/auth-service/
-}

let k8s =
        ../../k8s/1.15.dhall sha256:4bd5939adb0a5fc83d76e0d69aa3c5a30bc1a5af8f9df515f44b6fc59a0a4815
      ? ../../k8s/1.15.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../AuthServiceSpec/Type.dhall sha256:0088513c5510633ccf632eb63d54fffb7a8236294258f8b50167a0b52d007181
        ? ../AuthServiceSpec/Type.dhall
    }
