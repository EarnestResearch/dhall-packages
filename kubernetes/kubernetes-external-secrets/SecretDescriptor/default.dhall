{ backendType =
    (   ../BackendType/Type.dhall sha256:f87ee093600dd2ab85c57a8bc7e6aa45e86861ce60a3b8756acc0849eb3f62c4
      ? ../BackendType/Type.dhall
    ).secretsManager
}
