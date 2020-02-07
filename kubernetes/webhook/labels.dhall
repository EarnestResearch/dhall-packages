let Webhook = ./Type.dhall

let labels = \(config : Webhook) -> toMap { app = config.name }

in  labels
