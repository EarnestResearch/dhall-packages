{ backendType :
      ../BackendType/Type.dhall sha256:d5e534d36367916cd0ea677e8dd9365c99c0be7632f02c124670bf2d5f8886ea
    ? ../BackendType/Type.dhall
, data :
    List
      (   ../SecretsManagerExternalData/Type.dhall sha256:e6a8a0da8cc20ed4f880bd98a641988de5386e650d472ef1c8cce90932383ba3
        ? ../SecretsManagerExternalData/Type.dhall
      )
}
