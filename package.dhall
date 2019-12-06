{ kubernetes =
      ./kubernetes/package.dhall sha256:e8072181e78223e670c7f08e1392eaa6ed4b397dabf6d2018ad529598242ddcf
    ? ./kubernetes/package.dhall
, Prelude =
      https://prelude.dhall-lang.org/v12.0.0/package.dhall sha256:aea6817682359ae1939f3a15926b84ad5763c24a3740103202d2eaaea4d01f4c
    ? https://prelude.dhall-lang.org/v12.0.0/package.dhall
, util =
      ./util/package.dhall sha256:a4f561f4a468a237e542aa1b74b5696a0da4a9689a6cd0d01841b970281de1ff
    ? ./util/package.dhall
}
