{ addresses : List Text
, path : Text
, force : Optional Bool
, hdfsUser : Optional Text
, krbCCacheSecret :
    Optional
      (   ./io.k8s.api.core.v1.SecretKeySelector.dhall sha256:9c4e3bea86f7f805947acbf73e2886b8527517926ff5165981da2c47ed72c27c
        ? ./io.k8s.api.core.v1.SecretKeySelector.dhall
      )
, krbConfigConfigMap :
    Optional
      (   ./io.k8s.api.core.v1.ConfigMapKeySelector.dhall sha256:9c4e3bea86f7f805947acbf73e2886b8527517926ff5165981da2c47ed72c27c
        ? ./io.k8s.api.core.v1.ConfigMapKeySelector.dhall
      )
, krbKeytabSecret :
    Optional
      (   ./io.k8s.api.core.v1.SecretKeySelector.dhall sha256:9c4e3bea86f7f805947acbf73e2886b8527517926ff5165981da2c47ed72c27c
        ? ./io.k8s.api.core.v1.SecretKeySelector.dhall
      )
, krbRealm : Optional Text
, krbServicePrincipalName : Optional Text
, krbUsername : Optional Text
}
