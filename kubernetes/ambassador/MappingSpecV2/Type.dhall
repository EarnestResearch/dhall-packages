{-
  Ambassador Mapping Spec
  https://www.getambassador.io/reference/mappings/
-}
let Map =
        https://prelude.dhall-lang.org/v15.0.0/Map/Type sha256:210c7a9eba71efbb0f7a66b3dcf8b9d3976ffc2bc0e907aadfb6aa29c333e8ed
      ? https://prelude.dhall-lang.org/v15.0.0/Map/Type

in  { name : Text
    , prefix : Text
    , service : Text
    , add_linkerd_headers : Optional Bool
    , add_request_headers :
        Optional
          ( Map
              Text
              (   ../HeaderValue/Type.dhall sha256:39b0867682d87243817188faa79e0eb9d5300cbacb7bcbdfcc7e6cb1c0e30565
                ? ../HeaderValue/Type.dhall
              )
          )
    , add_response_headers :
        Optional
          ( Map
              Text
              (   ../HeaderValue/Type.dhall sha256:39b0867682d87243817188faa79e0eb9d5300cbacb7bcbdfcc7e6cb1c0e30565
                ? ../HeaderValue/Type.dhall
              )
          )
    , cluster_idle_timeout_ms : Optional Natural
    , connect_timeout_ms : Optional Natural
    , cors :
        Optional
          (   ../Cors/Type.dhall sha256:0b86d5f694ee3a96e484ae446d6577d203c9db954ed14411ad136cc333ca48f0
            ? ../Cors/Type.dhall
          )
    , circuit_breakers :
        Optional
          ( List
              (   ../CircuitBreaker/Type.dhall sha256:5259c491f2a58dc6645dad41259456b1a5246f03eddbf5157d02cc712e714022
                ? ../CircuitBreaker/Type.dhall
              )
          )
    , enable_ipv4 : Optional Bool
    , enable_ipv6 : Optional Bool
    , grpc : Optional Bool
    , headers :
        Optional
          ( Map
              Text
              (   ../HeaderValue/Type.dhall sha256:39b0867682d87243817188faa79e0eb9d5300cbacb7bcbdfcc7e6cb1c0e30565
                ? ../HeaderValue/Type.dhall
              )
          )
    , host : Optional Text
    , host_regex : Optional Bool
    , host_rewrite : Optional Text
    , idle_timeout_ms : Optional Natural
    , load_balancer :
        Optional
          (   ../Loadbalancer/Type.dhall sha256:49728b27fe193b251a030abf3324b36cdcbf898eaf82454078956f73474812e5
            ? ../Loadbalancer/Type.dhall
          )
    , method : Optional Text
    , method_regex : Optional Bool
    , prefix_regex : Optional Bool
    , rate_limits :
        Optional
          ( List
              (   ../RateLimit/Type.dhall sha256:ff00d495134b63b0cf9b13a8d5b8433ec09023e1be6b3ca214009ab501db2c02
                ? ../RateLimit/Type.dhall
              )
          )
    , remove_request_headers : Optional (List Text)
    , remove_response_headers : Optional (List Text)
    , regex_headers : Optional (Map Text Text)
    , rewrite : Optional Text
    , retry_policy :
        Optional
          (   ../RetryPolicy/Type.dhall sha256:72293302405d13f7c649c16c88d49cadbee8fd2101baf6853eef0fd437192acd
            ? ../RetryPolicy/Type.dhall
          )
    , timeout_ms : Optional Natural
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
