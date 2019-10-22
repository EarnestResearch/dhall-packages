{ project : Text
, source :
      ../SourceSpec/TypesUnion.dhall sha256:dd244f2dfa6c5dec8b5180e99fb0d406559b003fe5f280a7ea883ea5bbb6b5c4
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
