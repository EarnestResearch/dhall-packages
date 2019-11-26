{ syncPolicy =
    None
      (   ../SyncPolicy/Type.dhall sha256:c08cba845720619a88473776d513ea1f9fcb360f93b509caa59ef724df77f1ef
        ? ../SyncPolicy/Type.dhall
      )
, ignoreDifferences =
    None
      ( List
          (   ../Difference/Type.dhall sha256:68e73a7ed012e26329ba4951cec25efd6d138d1288af616b45f69e4d3f48a630
            ? ../Difference/Type.dhall
          )
      )
}
