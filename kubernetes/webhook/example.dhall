let Webhook = ./package.dhall

let k8s = ../k8s/1.14.dhall

let exampleWebhook =
      Webhook::{
      , imageName = "docker/whalesay:latest"
      , name = "whalesay"
      , namespace = "default"
      , path = "/mutate"
      , port = 8080
      , rules =
        [ k8s.RuleWithOperations::{
          , operations = [ "CREATE", "UPDATE" ]
          , apiGroups = [ "" ]
          , apiVersions = [ "v1" ]
          , resources = [ "pods" ]
          }
        ]
      }

in  Webhook.renderMutatingWebhook exampleWebhook
