{ description : Text
, sourceRepos : List Text
, destinations :
    List
      (   ../DestinationSpec/Type.dhall sha256:689554a30489cd60c83a1581ebf4b8de25acd1f6fc9fe7fbfff940b87ae018a3
        ? ../DestinationSpec/Type.dhall
      )
, clusterResourceWhitelist :
    Optional
      ( List
          (   ../ClusterResource/Type.dhall sha256:8fcc07ad4542bc5547d4831198cd7d34d14f60c32e6bf3e1334b61257ba61226
            ? ../ClusterResource/Type.dhall
          )
      )
}
