{ ignoreDifferences =
    [] : List
           (   ../../Difference/Type.dhall sha256:34e396f57549c6855081ee922624f429efd83112e32b707017efdffe0ef6db7f
             ? ../../Difference/Type.dhall
           )
, syncPolicy =
    None
      (   ../../SyncPolicy/Type.dhall sha256:c08cba845720619a88473776d513ea1f9fcb360f93b509caa59ef724df77f1ef
        ? ../../SyncPolicy/Type.dhall
      )
, commonLabels = None { additionalProperties : Text }
, images = [] : List Text
, namePrefix = None Text
}
