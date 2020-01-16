{ backendType :
      ../BackendType/Type.dhall sha256:7b7b4f32eaef6f79b5c618263a3911544ec9099953d9566538845671a628acd9
    ? ../BackendType/Type.dhall
, data :
    List
      (   ../SecretsManagerExternalData/Type.dhall sha256:5b356dfacb979cfcb22842c1e73d2185c0f241ede4bcddc6f4614c35c1afae11
        ? ../SecretsManagerExternalData/Type.dhall
      )
, dataFrom : List Text
}
