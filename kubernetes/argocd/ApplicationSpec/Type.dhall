{ project :
    Text
, source :
    ../SourceSpec/TypesUnion.dhall
, destination :
    ../DestinationSpec/Type.dhall
, syncPolicy :
    Optional ../SyncPolicy/Type.dhall
, ignoreDifferences :
    Optional (List ../Difference/Type.dhall)
}
