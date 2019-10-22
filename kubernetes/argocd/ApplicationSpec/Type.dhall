{ project : Text
, source :
      ../SourceSpec/TypesUnion.dhall sha256:1d75b9c52ee06cf4b5f3b304f5f38fd55bdf272f3d0b22017cc12afd3e05651c
    ? ../SourceSpec/TypesUnion.dhall
, destination :
      ../DestinationSpec/Type.dhall sha256:689554a30489cd60c83a1581ebf4b8de25acd1f6fc9fe7fbfff940b87ae018a3
    ? ../DestinationSpec/Type.dhall
, syncPolicy :
    Optional
      (   ../SyncPolicy/Type.dhall sha256:c08cba845720619a88473776d513ea1f9fcb360f93b509caa59ef724df77f1ef
        ? ../SyncPolicy/Type.dhall
      )
, ignoreDifferences :
    Optional
      ( List
          (   ../Difference/Type.dhall sha256:34e396f57549c6855081ee922624f429efd83112e32b707017efdffe0ef6db7f
            ? ../Difference/Type.dhall
          )
      )
}
