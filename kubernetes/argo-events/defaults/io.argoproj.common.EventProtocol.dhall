{ http =
      ./io.argoproj.common.Http.dhall sha256:9bb9dcb5bf6f795291686f59383bcd01c8e79b87fc3fb63351d46dea100ac51b
    ? ./io.argoproj.common.Http.dhall
, nats =
      ./io.argoproj.common.Nats.dhall sha256:70a1d83d7c4d9313eb7a93bc54e3f76f176fb419b3cd22d1efd05afe6502b852
    ? ./io.argoproj.common.Nats.dhall
}
