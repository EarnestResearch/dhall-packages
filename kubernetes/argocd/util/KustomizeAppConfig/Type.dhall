{ name : Text
, project : Text
, destination :
      ../../DestinationSpec/Type.dhall sha256:689554a30489cd60c83a1581ebf4b8de25acd1f6fc9fe7fbfff940b87ae018a3
    ? ../../DestinationSpec/Type.dhall
, source :
      ../Source/Type.dhall sha256:67125442fdf84e7c9f4a613237be378974cfe6a26a7fec08fedc5045fceed45d
    ? ../Source/Type.dhall
, ignoreDifferences :
    List
      (   ../../Difference/Type.dhall sha256:34e396f57549c6855081ee922624f429efd83112e32b707017efdffe0ef6db7f
        ? ../../Difference/Type.dhall
      )
, syncPolicy :
    Optional
      (   ../../SyncPolicy/Type.dhall sha256:c08cba845720619a88473776d513ea1f9fcb360f93b509caa59ef724df77f1ef
        ? ../../SyncPolicy/Type.dhall
      )
, commonLabels : Optional { additionalProperties : Text }
, images : Optional (List Text)
, namePrefix : Optional Text
}
