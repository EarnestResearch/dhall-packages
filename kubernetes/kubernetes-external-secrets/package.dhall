{ BackendType =
      ./BackendType/package.dhall sha256:8a611d85765bbc1962b973518fb2cc14adf28df15be2d12c9b63769d0a8cdc9a
    ? ./BackendType/package.dhall
, ExternalSecret =
      ./ExternalSecret/package.dhall sha256:1faeccea0701f13f5cf42dd76fa109f0a034e9c80ea9c2484cc0d8c6371c6578
    ? ./ExternalSecret/package.dhall
, SecretsManagerExternalData =
      ./SecretsManagerExternalData/package.dhall sha256:ce6b73c2cd3abbb9ed7395fdb9fc0e5caea061312813263c230a581fe19653ce
    ? ./SecretsManagerExternalData/package.dhall
, SystemManagerExternalData =
      ./SystemManagerExternalData/package.dhall sha256:4af8373b25d3ddaaf9d90aa0e47412f18b621b3f09473a2270dd905082d51465
    ? ./SystemManagerExternalData/package.dhall
, SecretDescriptor =
      ./SecretDescriptor.dhall sha256:18b8c67891d7abc2ed14004239b24f39cd62748da25ceca73788d29f466c48a2
    ? ./SecretDescriptor.dhall
, SecretsManagerSecretDescriptor =
      ./SecretsManagerSecretDescriptor/package.dhall sha256:32f2072161a250f6797032bb26d903001ccd570301539d30b50a67431f97f44c
    ? ./SecretsManagerSecretDescriptor/package.dhall
, SystemManagerSecretDescriptor =
      ./SystemManagerSecretDescriptor/package.dhall sha256:5e504c0b997eb9523fe8e8ff7a92bd6878e2e24673e84e701eb88bc40c96db87
    ? ./SystemManagerSecretDescriptor/package.dhall
}
