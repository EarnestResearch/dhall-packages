{ bucket =
    ./io.argoproj.common.S3Bucket.dhall
, events =
    [] : List Text
, filter =
    None ./../types/io.argoproj.common.S3Filter.dhall
, insecure =
    None Bool
, region =
    None Text
}
