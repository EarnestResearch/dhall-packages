let k8s =
        ../../k8s/1.14.dhall sha256:7839bf40f940757e4d71d3c1b84d878f6a4873c3b2706ae4be307b5991acdcac
      ? ../../k8s/1.14.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../ApplicationSpec/Type.dhall sha256:9f25eb2d8fa2e5fbc80f90935d7e59d23a053eadb55f6cd52931fa9708ebde82
        ? ../ApplicationSpec/Type.dhall
    }
