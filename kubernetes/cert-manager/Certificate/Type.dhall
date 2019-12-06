let k8s =
        ../../k8s/package.dhall sha256:4159b87d109cd88610c9d440701091d6fdd718d81aba5691e2d6ed7c93fbcd09
      ? ../../k8s/package.dhall

in  { apiVersion : Text
    , kind : Text
    , metadata : k8s.types.ObjectMeta
    , spec :
          ../CertificateSpec/Type.dhall sha256:b2e8063917b59c690a925ed4eccf9f68d012667602b205533472b3874d485d32
        ? ../CertificateSpec/Type.dhall
    }
