{ spec =
      ./io.argoproj.gateway.v1alpha1.GatewaySpec.dhall sha256:61e874bcd031ed04e2eec8184a6a8130fef3ca0687785a81dd9b92c0dd29c7a2
    ? ./io.argoproj.gateway.v1alpha1.GatewaySpec.dhall
, status =
    None
      (   ../types/io.argoproj.gateway.v1alpha1.GatewayStatus.dhall sha256:f9c4c6302fdf182c86abc417040942701b3dd7d526105914793262d229398cf5
        ? ../types/io.argoproj.gateway.v1alpha1.GatewayStatus.dhall
      )
, apiVersion = "argoproj.io/v1alpha1"
, kind = "Gateway"
}
