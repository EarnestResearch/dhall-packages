let Webhook =
        ./package.dhall sha256:432fbca750183c894f3f094f5ae718d55d5f8769b8621974d4292b4ecb368d01
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
