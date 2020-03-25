# Ambassador bindings for dhall

This package contains bindings for defining [Ambassador](https://getambassador.io) API Gateway resources.

## How to define a ambassador mapping
To define a ambassador [mapping](https://www.getambassador.io/reference/mappings/) you can do:

```dhall
let ambassador =
      https://raw.githubusercontent.com/EarnestResearch/dhall-packages/kubernetes/ambassador/package.dhall

let k8s =
      https://raw.githubusercontent.com/EarnestResearch/dhall-packages/master/kubernetes/k8s/1.15.dhall

in  ambassador.Mapping::{
    , metadata = k8s.ObjectMeta::{ name = "guestbook" }
    , spec = ambassador.MappingSpec::{
      , prefix = "/guestbook/"
      , service = "guestbook.default:80"
      }
    }

```

You can leverage dhall's capabilities and tie the mapping to the service definition as well, for example you can do:

```dhall
let k8s =
      https://raw.githubusercontent.com/EarnestResearch/dhall-packages/master/kubernetes/k8s/1.15.dhall

let ambassador =
      https://raw.githubusercontent.com/EarnestResearch/dhall-packages/master/kubernetes/ambassador/package.dhall

let appName = "guestbook"

let namespace = "default"

let port = 80

let service =
      k8s.Service::{
      , metadata = k8s.ObjectMeta::{
        , name = appName
        , namespace = Some namespace
        }
      , spec = Some k8s.ServiceSpec::{
        , selector = toMap { app = appName }
        , ports =
          [ k8s.ServicePort::{
            , targetPort = Some (k8s.IntOrString.Int 8080)
            , port = port
            }
          ]
        }
      }

in  ambassador.Mapping::{
    , metadata = k8s.ObjectMeta::{ name = service.metadata.name }
    , spec = ambassador.MappingSpec::{
      , prefix = "/${appName}/"
      , service = "${appName}.${namespace}:${Natural/show port}"
      }
    }

```