let k8s =
        ../k8s/1.14.dhall sha256:7839bf40f940757e4d71d3c1b84d878f6a4873c3b2706ae4be307b5991acdcac
      ? ../k8s/1.14.dhall

let cert-manager =
        ../cert-manager/package.dhall sha256:84d8acf2650094d5129e8c75b8f6d6c94e5878767949354e4ff6d7eeae5cfe39
      ? ../cert-manager/package.dhall

let certsPath = "/certs"

let Webhook =
        ./Type.dhall sha256:c833a7c500b51ebe0c1879967d11b476428a885b276d70e5f8cc3b4da09890ad
      ? ./Type.dhall

let labels =
        ./labels.dhall sha256:05c731fe37f21baf0f03bdbe393472a33ba7dd791b924c5ecc2696042f27d6fc
      ? ./labels.dhall

let deployment =
          \(webhook : Webhook)
      ->  k8s.Deployment::{
          , metadata = k8s.ObjectMeta::{ name = webhook.name }
          , spec = Some k8s.DeploymentSpec::{
            , selector = k8s.LabelSelector::{ matchLabels = labels webhook }
            , template = k8s.PodTemplateSpec::{
              , metadata = k8s.ObjectMeta::{
                , name = webhook.name
                , labels = labels webhook
                }
              , spec = Some k8s.PodSpec::{
                , containers =
                  [ k8s.Container::{
                    , name = webhook.name
                    , image = Some webhook.imageName
                    , ports =
                      [ k8s.ContainerPort::{ containerPort = webhook.port } ]
                    , env =
                      [ k8s.EnvVar::{
                        , name = "CERTIFICATE_FILE"
                        , value = Some "${certsPath}/tls.crt"
                        }
                      , k8s.EnvVar::{
                        , name = "KEY_FILE"
                        , value = Some "${certsPath}/tls.key"
                        }
                      , k8s.EnvVar::{
                        , name = "PORT"
                        , value = Some (Natural/show webhook.port)
                        }
                      ]
                    , volumeMounts =
                      [ k8s.VolumeMount::{
                        , name = "certs"
                        , mountPath = certsPath
                        , readOnly = Some True
                        }
                      ]
                    }
                  ]
                , volumes =
                  [ k8s.Volume::{
                    , name = "certs"
                    , secret = Some k8s.SecretVolumeSource::{
                      , secretName = Some webhook.name
                      }
                    }
                  ]
                }
              }
            }
          }

let service =
          \(webhook : Webhook)
      ->  k8s.Service::{
          , metadata = k8s.ObjectMeta::{ name = webhook.name }
          , spec = Some k8s.ServiceSpec::{
            , selector = labels webhook
            , ports =
              [ k8s.ServicePort::{
                , targetPort = Some (k8s.IntOrString.Int webhook.port)
                , port = 443
                }
              ]
            }
          }

let issuer =
          \(webhook : Webhook)
      ->  cert-manager.Issuer::{
          , metadata = k8s.ObjectMeta::{ name = webhook.name }
          , spec =
              cert-manager.IssuerSpec.SelfSigned
                cert-manager.SelfSignedIssuerSpec::{=}
          }

let certificate =
          \(webhook : Webhook)
      ->  cert-manager.Certificate::{
          , metadata = k8s.ObjectMeta::{ name = webhook.name }
          , spec = cert-manager.CertificateSpec::{
            , secretName = webhook.name
            , issuerRef = { name = webhook.name, kind = (issuer webhook).kind }
            , commonName = Some "${webhook.name}.${webhook.namespace}.svc"
            , dnsNames = Some
                [ webhook.name
                , "${webhook.name}.${webhook.namespace}"
                , "${webhook.name}.${webhook.namespace}.svc"
                , "${webhook.name}.${webhook.namespace}.svc.cluster.local"
                , "${webhook.name}:443"
                , "${webhook.name}.${webhook.namespace}:443"
                , "${webhook.name}.${webhook.namespace}.svc:443"
                , "${webhook.name}.${webhook.namespace}.svc.cluster.local:443"
                , "localhost:8080"
                ]
            , usages = Some [ "any" ]
            , isCA = Some False
            }
          }

let mutatingWebhookConfiguration =
          \(webhook : Webhook)
      ->  k8s.ValidatingWebhookConfiguration::{
          , metadata = k8s.ObjectMeta::{
            , name = webhook.name
            , labels = labels webhook
            , annotations =
                toMap
                  { `cert-manager.io/inject-ca-from` =
                      "${webhook.namespace}/${webhook.name}"
                  }
            }
          , webhooks =
            [ k8s.Webhook::{
              , name = "${webhook.name}.${webhook.namespace}.svc"
              , clientConfig = k8s.WebhookClientConfig::{
                , service = Some
                    { name = webhook.name
                    , namespace = webhook.namespace
                    , path = Some webhook.path
                    }
                }
              , failurePolicy = webhook.failurePolicy
              , admissionReviewVersions = [ "v1beta1" ]
              , rules = webhook.rules
              , namespaceSelector = webhook.namespaceSelector
              }
            ]
          }

let union =
      < Deployment : k8s.Deployment.Type
      | Service : k8s.Service.Type
      | MWH : k8s.ValidatingWebhookConfiguration.Type
      | Certificate : cert-manager.Certificate.Type
      | ClusterIssuer : cert-manager.ClusterIssuer.Type
      >

in      \(webhook : Webhook)
    ->  { apiVersion = "v1"
        , kind = "List"
        , items =
          [ union.Deployment (deployment webhook)
          , union.Service (service webhook)
          , union.MWH (mutatingWebhookConfiguration webhook)
          , union.Certificate (certificate webhook)
          , union.ClusterIssuer (issuer webhook)
          ]
        }
