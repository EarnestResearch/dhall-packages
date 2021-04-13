let Webhook =
        ./Type.dhall sha256:a71ac5b5469ecd2b6823ef59404fdf2878a24138028baa1697a3deadc8e9be73
      ? ./Type.dhall

let labels = \(config : Webhook) -> toMap { app = config.name }

in  labels
