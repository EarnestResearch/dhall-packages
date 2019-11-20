{ bucket =
      ./io.argoproj.common.S3Bucket.dhall sha256:dcf7f71ee897c47787969cefa51ae89a40d88d452adb74a9451fd1534c5ad901
    ? ./io.argoproj.common.S3Bucket.dhall
, events = [] : List Text
, filter =
    None
      (   ./../types/io.argoproj.common.S3Filter.dhall sha256:e8955bd37479e5e34a20abf8862aca567b1d6f635df9e7bf91be673ec00c7e5c
        ? ./../types/io.argoproj.common.S3Filter.dhall
      )
, insecure = None Bool
, region = None Text
}
