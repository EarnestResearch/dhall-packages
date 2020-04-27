let Webhook =
        ./package.dhall sha256:ddb9f54f2f15cc2ec9e4106db0d98a68f28fbc2c58d92d36f1a5e2280aaa0bea
      ? ./package.dhall

let k8s =
        ../k8s/1.15.dhall sha256:4bd5939adb0a5fc83d76e0d69aa3c5a30bc1a5af8f9df515f44b6fc59a0a4815
      ? ../k8s/1.15.dhall

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
