{ apiVersion = "cert-manager.io/v1alpha2"
, kind = "Certificate"
, spec =
      ../CertificateSpec/default.dhall sha256:8e09f7d887ca30287499e023fc551c7a29d61f7ee3df3a0494d5a9f237c7e881
    ? ../CertificateSpec/default.dhall
}
