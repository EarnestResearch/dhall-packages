{-
    Loadbalancer
    https://www.getambassador.io/reference/core/load-balancer/
-}
{ policy : Optional ../LoadbalancerPolicy/Type.dhall
, cookie : Optional ../LoadbalancerCookie/Type.dhall
, header : Optional Text
, source_ip : Optional Bool
}
