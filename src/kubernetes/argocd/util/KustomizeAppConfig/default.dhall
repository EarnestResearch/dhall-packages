{ ignoreDifferences = [] : List ../../Difference/Type.dhall
, syncPolicy = None ../../SyncPolicy/Type.dhall
, commonLabels = None { additionalProperties : Text }
, images = None (List Text)
, namePrefix = None Text
}
