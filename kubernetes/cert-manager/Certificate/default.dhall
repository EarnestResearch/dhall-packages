{ apiVersion = "certmanager.k8s.io/v1alpha1"
, kind = "Certificate"
, spec =
      ../CertificateSpec/default.dhall sha256:0859dea415bdfe96abcb09eb297511992e6fc57895f49bab82892d8e45e4e545
    ? ../CertificateSpec/default.dhall
}
