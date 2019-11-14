{ repo : Text
, insecureIgnoreHostKey : Optional Bool
, passwordSecret : Optional ./io.k8s.api.core.v1.SecretKeySelector.dhall
, revision : Optional Text
, sshPrivateKeySecret : Optional ./io.k8s.api.core.v1.SecretKeySelector.dhall
, usernameSecret : Optional ./io.k8s.api.core.v1.SecretKeySelector.dhall
}
