{ apiVersion = "cert-manager.io/v1alpha2"
, kind = "Certificate"
, spec =
      ../CertificateSpec/default.dhall sha256:71fc27c2437895f4d85904a5b7d5fab1134e00aab184bf937b3a8967d446513d
    ? ../CertificateSpec/default.dhall
}
