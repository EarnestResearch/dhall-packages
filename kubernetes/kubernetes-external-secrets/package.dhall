{ BackendType =
      ./BackendType/package.dhall sha256:8a611d85765bbc1962b973518fb2cc14adf28df15be2d12c9b63769d0a8cdc9a
    ? ./BackendType/package.dhall
, ExternalSecret =
      ./ExternalSecret/package.dhall sha256:1faeccea0701f13f5cf42dd76fa109f0a034e9c80ea9c2484cc0d8c6371c6578
    ? ./ExternalSecret/package.dhall
, SecretsManagerExternalData =
      ./SecretsManagerExternalData/package.dhall sha256:4fc3cc01529eb9817d773b75827f3fae1a96305e9dea1cfff40b710a81556377
    ? ./SecretsManagerExternalData/package.dhall
, SystemManagerExternalData =
      ./SystemManagerExternalData/package.dhall sha256:4af8373b25d3ddaaf9d90aa0e47412f18b621b3f09473a2270dd905082d51465
    ? ./SystemManagerExternalData/package.dhall
, SecretDescriptor =
      ./SecretDescriptor.dhall sha256:723bd48b2b27aa12fbd996b865027501b1e7568f5238f45a7171979748c2ec7e
    ? ./SecretDescriptor.dhall
}
