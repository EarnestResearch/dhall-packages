{ apiVersion =
    "certmanager.k8s.io/v1alpha1"
, kind =
    "Certificate"
, spec =
      ../CertificateSpec/default.dhall sha256:0001997797a8c0397786146f0ac2db5ebecc31139751cafdc0548ac292436621
    ? ../CertificateSpec/default.dhall
}
