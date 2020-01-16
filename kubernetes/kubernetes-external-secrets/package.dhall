{ BackendType =
      ./BackendType/package.dhall sha256:8a611d85765bbc1962b973518fb2cc14adf28df15be2d12c9b63769d0a8cdc9a
    ? ./BackendType/package.dhall
, ExternalSecret =
      ./ExternalSecret/package.dhall sha256:57999e85393c04a74b5432bc37448afcb09ef169fb556bfe6e94b244675df993
    ? ./ExternalSecret/package.dhall
, SecretsManagerExternalData =
      ./SecretsManagerExternalData/package.dhall sha256:06e4b16d312bf0cade699e35b6204e4f72da8988751665ba9887d75c0712c457
    ? ./SecretsManagerExternalData/package.dhall
, SystemManagerExternalData =
      ./SystemManagerExternalData/package.dhall sha256:4af8373b25d3ddaaf9d90aa0e47412f18b621b3f09473a2270dd905082d51465
    ? ./SystemManagerExternalData/package.dhall
, SecretDescriptor =
      ./SecretDescriptor.dhall sha256:d617a70cb22e811f5b6669b856cf37961d9ea5fb897496a3af01f5cb019c5951
    ? ./SecretDescriptor.dhall
, SecretsManagerSecretDescriptor =
      ./SecretsManagerSecretDescriptor/package.dhall sha256:32f2072161a250f6797032bb26d903001ccd570301539d30b50a67431f97f44c
    ? ./SecretsManagerSecretDescriptor/package.dhall
, SystemManagerSecretDescriptor =
      ./SystemManagerSecretDescriptor/package.dhall sha256:5e504c0b997eb9523fe8e8ff7a92bd6878e2e24673e84e701eb88bc40c96db87
    ? ./SystemManagerSecretDescriptor/package.dhall
}
