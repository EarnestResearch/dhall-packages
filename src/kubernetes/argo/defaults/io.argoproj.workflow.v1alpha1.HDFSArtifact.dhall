{ addresses = [] : List Text
, force = None Bool
, hdfsUser = None Text
, krbCCacheSecret = None ./../types/io.k8s.api.core.v1.SecretKeySelector.dhall
, krbConfigConfigMap =
    None ./../types/io.k8s.api.core.v1.ConfigMapKeySelector.dhall
, krbKeytabSecret = None ./../types/io.k8s.api.core.v1.SecretKeySelector.dhall
, krbRealm = None Text
, krbServicePrincipalName = None Text
, krbUsername = None Text
}
