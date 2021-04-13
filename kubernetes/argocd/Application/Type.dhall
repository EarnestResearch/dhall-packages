let k8s =
        ../../k8s/1.15.dhall sha256:9ed8981915875f3bbe08ad7047d92cd181b6ece140af876beecadb8ed079e10a
      ? ../../k8s/1.15.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../ApplicationSpec/Type.dhall sha256:9f25eb2d8fa2e5fbc80f90935d7e59d23a053eadb55f6cd52931fa9708ebde82
        ? ../ApplicationSpec/Type.dhall
    }
