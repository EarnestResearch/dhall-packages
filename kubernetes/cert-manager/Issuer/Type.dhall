let k8s =
        ../../k8s/1.14.dhall sha256:7839bf40f940757e4d71d3c1b84d878f6a4873c3b2706ae4be307b5991acdcac
      ? ../../k8s/1.14.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../IssuerSpec/Type.dhall sha256:a444f78e67974acf5936a24860a1913872122003e42732c6c84391f00dc7d2df
        ? ../IssuerSpec/Type.dhall
    }
