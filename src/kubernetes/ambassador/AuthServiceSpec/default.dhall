{ path_prefix = None Text
, proto = None ../AuthServiceProtocol/Type.dhall
, allowed_request_headers = None (List Text)
, allowed_authorization_headers = None (List Text)
, include_body = None ../AuthServiceIncludeBody/Type.dhall
, status_on_error = None ../AuthServiceStatusOnError/Type.dhall
, failure_mode_allow = None Bool
, add_linkerd_headers = None Bool
, cluster_idle_timeout_ms = None Bool
}
