let k8s =
      https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/4ad58156b7fdbbb6da0543d8b314df899feca077/types.dhall sha256:e48e21b807dad217a6c3e631fcaf3e950062310bfb4a8bbcecc330eb7b2f60ed

in  { apiVersion :
        Text
    , kind : Text
    , metadata : k8s.ObjectMeta
    , spec :
          ../ApplicationSpec/Type.dhall sha256:0912a3a741d031a0abd521252e0bbe3171cf5c9351cf120ff4e44013c81b08a2
        ? ../ApplicationSpec/Type.dhall
    }
