{ BackendType =
      ./BackendType/package.dhall sha256:7f2110b1cfa58679e775763d805829b40b794c77cee7b51c6976d9017234071c
    ? ./BackendType/package.dhall
, ExternalSecret =
      ./ExternalSecret/package.dhall sha256:3e6d806d10e240ca0bb5fc1a7c4e7eac25bd000eda365277e39f1f2813338dd2
    ? ./ExternalSecret/package.dhall
, ExternalSecretData =
      ./ExternalSecretData/package.dhall sha256:4fc3cc01529eb9817d773b75827f3fae1a96305e9dea1cfff40b710a81556377
    ? ./ExternalSecretData/package.dhall
, SecretDescriptor =
      ./SecretDescriptor/package.dhall sha256:50adea83c5b672cd10b5933d3f7d318bb6d085da2ed6a2a1c2d375bb4d58214b
    ? ./SecretDescriptor/package.dhall
}
