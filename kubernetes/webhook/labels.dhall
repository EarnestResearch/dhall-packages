let Webhook =
        ./Type.dhall sha256:c833a7c500b51ebe0c1879967d11b476428a885b276d70e5f8cc3b4da09890ad
      ? ./Type.dhall

let labels = \(config : Webhook) -> toMap { app = config.name }

in  labels
