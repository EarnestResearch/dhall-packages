{ backendType :
      ../BackendType/Type.dhall sha256:f87ee093600dd2ab85c57a8bc7e6aa45e86861ce60a3b8756acc0849eb3f62c4
    ? ../BackendType/Type.dhall
, data :
    List
      (   ../ExternalSecretData/Type.dhall sha256:e6a8a0da8cc20ed4f880bd98a641988de5386e650d472ef1c8cce90932383ba3
        ? ../ExternalSecretData/Type.dhall
      )
}
