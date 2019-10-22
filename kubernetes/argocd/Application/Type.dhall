let k8s =
      https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/4ad58156b7fdbbb6da0543d8b314df899feca077/types.dhall sha256:e48e21b807dad217a6c3e631fcaf3e950062310bfb4a8bbcecc330eb7b2f60ed

in  { apiVersion :
        Text
    , kind : Text
    , metadata : k8s.ObjectMeta
    , spec :
          ../ApplicationSpec/Type.dhall sha256:1f271a9936ad477b49a19e7f6806dd8d221dc5306da5e6f3de2fb3e9fae89880
        ? ../ApplicationSpec/Type.dhall
    }
