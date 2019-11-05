{-
    Loadbalancer
    https://www.getambassador.io/reference/core/load-balancer/
-}
{ policy :
    Optional
      (   ../LoadbalancerPolicy/Type.dhall sha256:7020c1df8fed508972c73c828d199c6fa32d08e3eb09562bdf6c274c55518245
        ? ../LoadbalancerPolicy/Type.dhall
      )
, cookie :
    Optional
      (   ../LoadbalancerCookie/Type.dhall sha256:8b6e4c324b1e5e9ab0bc63e4ece918b12d3e5b7bd83fbd88bad11ad09491801d
        ? ../LoadbalancerCookie/Type.dhall
      )
, header : Optional Text
, source_ip : Optional Bool
}
