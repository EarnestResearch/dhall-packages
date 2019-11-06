{ krbCCacheSecret =
    None
      (   ./../types/io.k8s.api.core.v1.SecretKeySelector.dhall sha256:9c4e3bea86f7f805947acbf73e2886b8527517926ff5165981da2c47ed72c27c
        ? ./../types/io.k8s.api.core.v1.SecretKeySelector.dhall
      )
, krbConfigConfigMap =
    None
      (   ./../types/io.k8s.api.core.v1.ConfigMapKeySelector.dhall sha256:9c4e3bea86f7f805947acbf73e2886b8527517926ff5165981da2c47ed72c27c
        ? ./../types/io.k8s.api.core.v1.ConfigMapKeySelector.dhall
      )
, krbKeytabSecret =
    None
      (   ./../types/io.k8s.api.core.v1.SecretKeySelector.dhall sha256:9c4e3bea86f7f805947acbf73e2886b8527517926ff5165981da2c47ed72c27c
        ? ./../types/io.k8s.api.core.v1.SecretKeySelector.dhall
      )
, krbRealm = None Text
, krbServicePrincipalName = None Text
, krbUsername = None Text
}
