let k8s =
        ../../k8s/1.15.dhall sha256:4bd5939adb0a5fc83d76e0d69aa3c5a30bc1a5af8f9df515f44b6fc59a0a4815
      ? ../../k8s/1.15.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../ApplicationSpec/Type.dhall sha256:9f25eb2d8fa2e5fbc80f90935d7e59d23a053eadb55f6cd52931fa9708ebde82
        ? ../ApplicationSpec/Type.dhall
    }
