let Webhook =
        ./package.dhall sha256:1089dfd1e3a5abd70b5c95ce33e870b14a6a9c552ff8985e4b97080727aeb094
      ? ./package.dhall

let k8s =
        ../k8s/1.15.dhall sha256:9ed8981915875f3bbe08ad7047d92cd181b6ece140af876beecadb8ed079e10a
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
