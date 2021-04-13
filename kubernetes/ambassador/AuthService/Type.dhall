{-
  Ambassador AuthService
  https://www.getambassador.io/reference/services/auth-service/
-}

let k8s =
        ../../k8s/1.15.dhall sha256:9ed8981915875f3bbe08ad7047d92cd181b6ece140af876beecadb8ed079e10a
      ? ../../k8s/1.15.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../AuthServiceSpec/Type.dhall sha256:0088513c5510633ccf632eb63d54fffb7a8236294258f8b50167a0b52d007181
        ? ../AuthServiceSpec/Type.dhall
    }
