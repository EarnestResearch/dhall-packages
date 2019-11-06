{ backendType :
      ../BackendType/Type.dhall sha256:7b7b4f32eaef6f79b5c618263a3911544ec9099953d9566538845671a628acd9
    ? ../BackendType/Type.dhall
, data :
    List
      (   ../SecretsManagerExternalData/Type.dhall sha256:e6a8a0da8cc20ed4f880bd98a641988de5386e650d472ef1c8cce90932383ba3
        ? ../SecretsManagerExternalData/Type.dhall
      )
}
