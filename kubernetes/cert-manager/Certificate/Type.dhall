let k8s =
        ../../k8s/package.dhall sha256:4c9c40f1762e95578c86c3efbccb87ce74ff67c5111a4c92c4393c6d163bb51b
      ? ../../k8s/package.dhall

in  { apiVersion :
        Text
    , kind :
        Text
    , metadata :
        k8s.types.ObjectMeta
    , spec :
          ../CertificateSpec/Type.dhall sha256:b2e8063917b59c690a925ed4eccf9f68d012667602b205533472b3874d485d32
        ? ../CertificateSpec/Type.dhall
    }
