{ backendType =
    (   ../BackendType/Type.dhall sha256:7b7b4f32eaef6f79b5c618263a3911544ec9099953d9566538845671a628acd9
      ? ../BackendType/Type.dhall
    ).secretsManager
}
