{-
  Ambassador AuthService
  https://www.getambassador.io/reference/services/auth-service/
-}

let k8s = ../../k8s/package.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.types.ObjectMeta
    , spec : ../AuthServiceSpec/Type.dhall
    }
