{ kubernetes =
      ./kubernetes/package.dhall sha256:920cbafcb94f3d3f79548f42c07c3ece0e51d11990dcd92b82b45b4b938b8c7d
    ? ./kubernetes/package.dhall
, Prelude =
      https://prelude.dhall-lang.org/v11.1.0/package.dhall sha256:99462c205117931c0919f155a6046aec140c70fb8876d208c7c77027ab19c2fa
    ? https://prelude.dhall-lang.org/v11.1.0/package.dhall
, util =
      ./util/package.dhall sha256:a4f561f4a468a237e542aa1b74b5696a0da4a9689a6cd0d01841b970281de1ff
    ? ./util/package.dhall
}
