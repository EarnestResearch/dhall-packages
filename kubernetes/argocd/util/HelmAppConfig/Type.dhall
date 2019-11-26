{ name : Text
, project : Text
, destination :
      ../../DestinationSpec/Type.dhall sha256:689554a30489cd60c83a1581ebf4b8de25acd1f6fc9fe7fbfff940b87ae018a3
    ? ../../DestinationSpec/Type.dhall
, source :
      ../Source/Type.dhall sha256:67125442fdf84e7c9f4a613237be378974cfe6a26a7fec08fedc5045fceed45d
    ? ../Source/Type.dhall
, parameters :
    List
      (   ../../Parameter/Type.dhall sha256:b8c3c0c4ceb36ba4e6674df5de20ad1d97e120b93b9ce9914a41d0036770dcc4
        ? ../../Parameter/Type.dhall
      )
, valueFiles : List Text
, ignoreDifferences :
    List
      (   ../../Difference/Type.dhall sha256:68e73a7ed012e26329ba4951cec25efd6d138d1288af616b45f69e4d3f48a630
        ? ../../Difference/Type.dhall
      )
, syncPolicy :
    Optional
      (   ../../SyncPolicy/Type.dhall sha256:c08cba845720619a88473776d513ea1f9fcb360f93b509caa59ef724df77f1ef
        ? ../../SyncPolicy/Type.dhall
      )
}
