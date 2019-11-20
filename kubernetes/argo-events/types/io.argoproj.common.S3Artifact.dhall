{ accessKey :
      https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.api.core.v1.SecretKeySelector.dhall sha256:9c4e3bea86f7f805947acbf73e2886b8527517926ff5165981da2c47ed72c27c
    ? https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.api.core.v1.SecretKeySelector.dhall
, bucket :
      ./io.argoproj.common.S3Bucket.dhall sha256:7a2d643245387827e88e93d4291dbc1b5dbb283a02f36705053b72ea32c048f4
    ? ./io.argoproj.common.S3Bucket.dhall
, endpoint : Text
, events : List Text
, secretKey :
      https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.api.core.v1.SecretKeySelector.dhall sha256:9c4e3bea86f7f805947acbf73e2886b8527517926ff5165981da2c47ed72c27c
    ? https://raw.githubusercontent.com/dhall-lang/dhall-kubernetes/fee24c0993ba0b20190e2fdb94e386b7fb67252d/types/io.k8s.api.core.v1.SecretKeySelector.dhall
, filter :
    Optional
      (   ./io.argoproj.common.S3Filter.dhall sha256:e8955bd37479e5e34a20abf8862aca567b1d6f635df9e7bf91be673ec00c7e5c
        ? ./io.argoproj.common.S3Filter.dhall
      )
, insecure : Optional Bool
, region : Optional Text
}
