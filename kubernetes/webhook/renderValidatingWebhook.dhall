let k8s =
        ../k8s/1.15.dhall sha256:9ed8981915875f3bbe08ad7047d92cd181b6ece140af876beecadb8ed079e10a
      ? ../k8s/1.15.dhall

let cert-manager =
        ../cert-manager/package.dhall sha256:1640fd5080778e8e9f565cf5790efe18ba9aa57599248b3c75425825be4ef739
      ? ../cert-manager/package.dhall

let certsPath = "/certs"

let Webhook =
        ./Type.dhall sha256:a71ac5b5469ecd2b6823ef59404fdf2878a24138028baa1697a3deadc8e9be73
      ? ./Type.dhall

let labels =
        ./labels.dhall sha256:1cf6971c63fef213125cc10c5ecf5c32df954da0e186943693994121485f67e1
      ? ./labels.dhall

let deployment =
          \(webhook : Webhook)
      ->  k8s.Deployment::{
          , metadata = k8s.ObjectMeta::{ name = Some webhook.name }
          , spec = Some k8s.DeploymentSpec::{
            , selector = k8s.LabelSelector::{
              , matchLabels = Some (labels webhook)
              }
            , template = k8s.PodTemplateSpec::{
              , metadata = Some k8s.ObjectMeta::{
                , name = Some webhook.name
                , labels = Some (labels webhook)
                }
              , spec = Some k8s.PodSpec::{
                , containers =
                  [ k8s.Container::{
                    , name = webhook.name
                    , image = Some webhook.imageName
                    , ports = Some
                      [ k8s.ContainerPort::{
                        , containerPort = Natural/toInteger webhook.port
                        }
                      ]
                    , env = Some
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
                    , volumeMounts = Some
                      [ k8s.VolumeMount::{
                        , name = "certs"
                        , mountPath = certsPath
                        , readOnly = Some True
                        }
                      ]
                    }
                  ]
                , volumes = Some
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
          , metadata = k8s.ObjectMeta::{ name = Some webhook.name }
          , spec = Some k8s.ServiceSpec::{
            , selector = Some (labels webhook)
            , ports = Some
              [ k8s.ServicePort::{
                , targetPort = Some
                    (k8s.IntOrString.Int (Natural/toInteger webhook.port))
                , port = Natural/toInteger 443
                }
              ]
            }
          }

let issuer =
          \(webhook : Webhook)
      ->  cert-manager.Issuer::{
          , metadata = k8s.ObjectMeta::{ name = Some webhook.name }
          , spec =
              cert-manager.IssuerSpec.SelfSigned
                cert-manager.SelfSignedIssuerSpec::{=}
          }

let certificate =
          \(webhook : Webhook)
      ->  cert-manager.Certificate::{
          , metadata = k8s.ObjectMeta::{ name = Some webhook.name }
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
            , name = Some webhook.name
            , labels = Some (labels webhook)
            , annotations = Some
                ( toMap
                    { `cert-manager.io/inject-ca-from` =
                        "${webhook.namespace}/${webhook.name}"
                    }
                )
            }
          , webhooks = Some
            [ k8s.ValidatingWebhook::{
              , name = "${webhook.name}.${webhook.namespace}.svc"
              , clientConfig = k8s.WebhookClientConfig::{
                , service = Some
                  { name = webhook.name
                  , namespace = webhook.namespace
                  , path = Some webhook.path
                  , port = Some (Natural/toInteger 443)
                  }
                }
              , failurePolicy = webhook.failurePolicy
              , admissionReviewVersions = Some [ "v1beta1" ]
              , rules = Some webhook.rules
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
