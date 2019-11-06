let Map =
        https://prelude.dhall-lang.org/v11.1.0/Map/Type sha256:210c7a9eba71efbb0f7a66b3dcf8b9d3976ffc2bc0e907aadfb6aa29c333e8ed
      ? https://prelude.dhall-lang.org/v11.1.0/Map/Type

in  { add_linkerd_headers =
        None Bool
    , add_request_headers =
        None
          ( Map
              Text
              (   ../HeaderValue/Type.dhall sha256:39b0867682d87243817188faa79e0eb9d5300cbacb7bcbdfcc7e6cb1c0e30565
                ? ../HeaderValue/Type.dhall
              )
          )
    , add_response_headers =
        None
          ( Map
              Text
              (   ../HeaderValue/Type.dhall sha256:39b0867682d87243817188faa79e0eb9d5300cbacb7bcbdfcc7e6cb1c0e30565
                ? ../HeaderValue/Type.dhall
              )
          )
    , cluster_idle_timeout_ms = None Natural
    , cors =
        None
          (   ../Cors/Type.dhall sha256:0b86d5f694ee3a96e484ae446d6577d203c9db954ed14411ad136cc333ca48f0
            ? ../Cors/Type.dhall
          )
    , circuit_breakers =
        None
          ( List
              (   ../CircuitBreaker/Type.dhall sha256:5259c491f2a58dc6645dad41259456b1a5246f03eddbf5157d02cc712e714022
                ? ../CircuitBreaker/Type.dhall
              )
          )
    , enable_ipv4 = None Bool
    , enable_ipv6 = None Bool
    , grpc = None Bool
    , headers =
        None
          ( Map
              Text
              (   ../HeaderValue/Type.dhall sha256:39b0867682d87243817188faa79e0eb9d5300cbacb7bcbdfcc7e6cb1c0e30565
                ? ../HeaderValue/Type.dhall
              )
          )
    , host = None Text
    , host_regex = None Bool
    , host_rewrite = None Text
    , load_balancer =
        None
          (   ../Loadbalancer/Type.dhall sha256:49728b27fe193b251a030abf3324b36cdcbf898eaf82454078956f73474812e5
            ? ../Loadbalancer/Type.dhall
          )
    , method = None Text
    , method_regex = None Bool
    , prefix_regex = None Bool
    , remove_request_headers = None (List Text)
    , remove_response_headers = None (List Text)
    , regex_headers = None (Map Text Text)
    , rewrite = None Text
    , retry_policy =
        None
          (   ../RetryPolicy/Type.dhall sha256:72293302405d13f7c649c16c88d49cadbee8fd2101baf6853eef0fd437192acd
            ? ../RetryPolicy/Type.dhall
          )
    , timeout_ms = None Natural
    , connect_timeout_ms = None Natural
    , tls = None Bool
    , use_websocket = None Bool
    , shadow = None Bool
    , weight = None Natural
    , auto_host_rewrite = None Bool
    , case_sensitive = None Bool
    , host_redirect = None Bool
    , path_redirect = None Bool
    , precedence = None Integer
    , bypass_auth = None Bool
    }
