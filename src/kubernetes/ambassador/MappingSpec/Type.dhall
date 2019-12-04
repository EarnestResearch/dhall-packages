{-
  Ambassador Mapping Spec
  https://www.getambassador.io/reference/mappings/
-}
let Map =
      https://prelude.dhall-lang.org/v11.1.0/Map/Type sha256:210c7a9eba71efbb0f7a66b3dcf8b9d3976ffc2bc0e907aadfb6aa29c333e8ed

in  { prefix : Text
    , service : Text
    , add_linkerd_headers : Optional Bool
    , add_request_headers : Optional (Map Text ../HeaderValue/Type.dhall)
    , add_response_headers : Optional (Map Text ../HeaderValue/Type.dhall)
    , cluster_idle_timeout_ms : Optional Natural
    , cors : Optional ../Cors/Type.dhall
    , circuit_breakers : Optional (List ../CircuitBreaker/Type.dhall)
    , enable_ipv4 : Optional Bool
    , enable_ipv6 : Optional Bool
    , grpc : Optional Bool
    , headers : Optional (Map Text ../HeaderValue/Type.dhall)
    , host : Optional Text
    , host_regex : Optional Bool
    , host_rewrite : Optional Text
    , load_balancer : Optional ../Loadbalancer/Type.dhall
    , method : Optional Text
    , method_regex : Optional Bool
    , prefix_regex : Optional Bool
    , remove_request_headers : Optional (List Text)
    , remove_response_headers : Optional (List Text)
    , regex_headers : Optional (Map Text Text)
    , rewrite : Optional Text
    , retry_policy : Optional ../RetryPolicy/Type.dhall
    , timeout_ms : Optional Natural
    , connect_timeout_ms : Optional Natural
    , tls : Optional Bool
    , use_websocket : Optional Bool
    , shadow : Optional Bool
    , weight : Optional Natural
    , auto_host_rewrite : Optional Bool
    , case_sensitive : Optional Bool
    , host_redirect : Optional Bool
    , path_redirect : Optional Text
    , precedence : Optional Integer
    , bypass_auth : Optional Bool
    }
