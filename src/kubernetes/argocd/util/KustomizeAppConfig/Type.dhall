{ name : Text
, project : Text
, destination : ../../DestinationSpec/Type.dhall
, source : ../Source/Type.dhall
, ignoreDifferences : List ../../Difference/Type.dhall
, syncPolicy : Optional ../../SyncPolicy/Type.dhall
, commonLabels : Optional { additionalProperties : Text }
, images : Optional (List Text)
, namePrefix : Optional Text
}
