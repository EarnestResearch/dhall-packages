{ addresses : List Text
, path : Text
, force : Optional Bool
, hdfsUser : Optional Text
, krbCCacheSecret : Optional ./io.k8s.api.core.v1.SecretKeySelector.dhall
, krbConfigConfigMap : Optional ./io.k8s.api.core.v1.ConfigMapKeySelector.dhall
, krbKeytabSecret : Optional ./io.k8s.api.core.v1.SecretKeySelector.dhall
, krbRealm : Optional Text
, krbServicePrincipalName : Optional Text
, krbUsername : Optional Text
}
