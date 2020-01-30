let k8s =
        ../../k8s/1.14.dhall sha256:7839bf40f940757e4d71d3c1b84d878f6a4873c3b2706ae4be307b5991acdcac
      ? ../../k8s/1.14.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.ObjectMeta.Type
    , spec :
          ../CertificateSpec/Type.dhall sha256:1bb377b219bd7e9a7ac7373b840f09568c61e4688fc162d712a35c3cf0dd3378
        ? ../CertificateSpec/Type.dhall
    }
