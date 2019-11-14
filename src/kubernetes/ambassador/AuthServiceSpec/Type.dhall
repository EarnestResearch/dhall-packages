{ auth_service : Text
, path_prefix : Optional Text
, proto : Optional ../AuthServiceProtocol/Type.dhall
, allowed_request_headers : Optional (List Text)
, allowed_authorization_headers : Optional (List Text)
, include_body : Optional ../AuthServiceIncludeBody/Type.dhall
, status_on_error : Optional ../AuthServiceStatusOnError/Type.dhall
, failure_mode_allow : Optional Bool
, add_linkerd_headers : Optional Bool
, cluster_idle_timeout_ms : Optional Bool
}
