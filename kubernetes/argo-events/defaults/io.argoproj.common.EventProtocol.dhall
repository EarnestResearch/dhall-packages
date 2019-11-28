{ http =
    None
      (   ../types/io.argoproj.common.Http.dhall sha256:008bbd365377a850574776abce886a072765a967b876e492c1c51afab13f2e19
        ? ../types/io.argoproj.common.Http.dhall
      )
, nats =
    None
      (   ../types/io.argoproj.common.Nats.dhall sha256:ffacddff3a7a785e889ac7c8f70baaeb41172d747f508ccd648239628aa65e3a
        ? ../types/io.argoproj.common.Nats.dhall
      )
}
