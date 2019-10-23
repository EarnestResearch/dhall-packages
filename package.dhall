{ kubernetes =
      ./kubernetes/package.dhall sha256:b31876ad89d6dd77a73253fe8637886656aaa4e7197ef004965073ff7256a3c1
    ? ./kubernetes/package.dhall
, Prelude =
      https://prelude.dhall-lang.org/v10.0.0/package.dhall sha256:771c7131fc87e13eb18f770a27c59f9418879f7e230ba2a50e46f4461f43ec69
    ? https://prelude.dhall-lang.org/v10.0.0/package.dhall
, util =
      ./util/package.dhall sha256:a4f561f4a468a237e542aa1b74b5696a0da4a9689a6cd0d01841b970281de1ff
    ? ./util/package.dhall
}
