let k8s =
        ../../k8s/1.15.dhall sha256:9ed8981915875f3bbe08ad7047d92cd181b6ece140af876beecadb8ed079e10a
      ? ../../k8s/1.15.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../IssuerSpec/Type.dhall sha256:f6653c04550257450fe39a85745801ae60fe643acf09308f0f8b336517f9a4e3
        ? ../IssuerSpec/Type.dhall
    }
