{ secretName : Text
, subject : Optional Text
, issuerRef : { name : Text, kind : Text }
, commonName : Optional Text
, organization : Optional (List Text)
, duration : Optional Text
, renewBefore : Optional Text
, dnsNames : Optional (List Text)
, ipAddresses : Optional (List Text)
, uriSANs : Optional (List Text)
, isCA : Optional Bool
, usages : Optional (List Text)
, keySize : Optional Natural
, keyAlgorithm : Optional Text
, keyEncoding : Optional Text
}
