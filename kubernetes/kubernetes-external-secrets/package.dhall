{ BackendType =
      ./BackendType/package.dhall sha256:9900a4f154e290b1c3c8ba6f5ec65dcb34ff52a18e0d6241cded3e7268f95988
    ? ./BackendType/package.dhall
, ExternalSecret =
      ./ExternalSecret/package.dhall sha256:3e6d806d10e240ca0bb5fc1a7c4e7eac25bd000eda365277e39f1f2813338dd2
    ? ./ExternalSecret/package.dhall
, SecretsManagerExternalData =
      ./SecretsManagerExternalData/package.dhall sha256:4fc3cc01529eb9817d773b75827f3fae1a96305e9dea1cfff40b710a81556377
    ? ./SecretsManagerExternalData/package.dhall
, SystemsManagerExternalData =
      ./SystemsManagerExternalData/package.dhall sha256:4af8373b25d3ddaaf9d90aa0e47412f18b621b3f09473a2270dd905082d51465
    ? ./SystemsManagerExternalData/package.dhall
, SecretDescriptor =
      ./SecretDescriptor.dhall sha256:d2bcc74a4c167e86c36ecf394f311728f7194948c903f35e9b16355957ca6e38
    ? ./SecretDescriptor.dhall
}
