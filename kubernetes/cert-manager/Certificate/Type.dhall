let k8s = ../../k8s/package.dhall
in {
    apiVersion: Text,
    kind: Text,
    metadata: k8s.types.ObjectMeta,
    spec: ../CertificateSpec/Type.dhall
}