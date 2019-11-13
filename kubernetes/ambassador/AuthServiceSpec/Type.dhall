{ auth_service : Text
, path_prefix : Optional Text
, proto :
    Optional
      (   ../AuthServiceProtocol/Type.dhall sha256:313bceb2e0eb1eaabdeeb91adc6d6690eb9cd21941ddbf20a22012b188330a2d
        ? ../AuthServiceProtocol/Type.dhall
      )
, allowed_request_headers : Optional (List Text)
, allowed_authorization_headers : Optional (List Text)
, include_body :
    Optional
      (   ../AuthServiceIncludeBody/Type.dhall sha256:9807c28aaaafd3a2770b27f4785f5d03ed7b38cfebbe9326a87e5e9fbd3bfa77
        ? ../AuthServiceIncludeBody/Type.dhall
      )
, status_on_error :
    Optional
      (   ../AuthServiceStatusOnError/Type.dhall sha256:78720ba016495db5ff0f6220de0d5e617f342b33788be00a7289e446797a3a74
        ? ../AuthServiceStatusOnError/Type.dhall
      )
, failure_mode_allow : Optional Bool
, add_linkerd_headers : Optional Bool
, cluster_idle_timeout_ms : Optional Bool
}
