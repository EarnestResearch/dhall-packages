{ accessKeySecret :
      ./io.k8s.api.core.v1.SecretKeySelector.dhall sha256:9c4e3bea86f7f805947acbf73e2886b8527517926ff5165981da2c47ed72c27c
    ? ./io.k8s.api.core.v1.SecretKeySelector.dhall
, bucket : Text
, endpoint : Text
, key : Text
, secretKeySecret :
      ./io.k8s.api.core.v1.SecretKeySelector.dhall sha256:9c4e3bea86f7f805947acbf73e2886b8527517926ff5165981da2c47ed72c27c
    ? ./io.k8s.api.core.v1.SecretKeySelector.dhall
, insecure : Optional Bool
, region : Optional Text
}
