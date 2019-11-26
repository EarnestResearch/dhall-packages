{ parameters =
    [] : List
           (   ../../Parameter/Type.dhall sha256:b8c3c0c4ceb36ba4e6674df5de20ad1d97e120b93b9ce9914a41d0036770dcc4
             ? ../../Parameter/Type.dhall
           )
, valueFiles = [] : List Text
, ignoreDifferences =
    [] : List
           (   ../../Difference/Type.dhall sha256:68e73a7ed012e26329ba4951cec25efd6d138d1288af616b45f69e4d3f48a630
             ? ../../Difference/Type.dhall
           )
, syncPolicy =
    None
      (   ../../SyncPolicy/Type.dhall sha256:c08cba845720619a88473776d513ea1f9fcb360f93b509caa59ef724df77f1ef
        ? ../../SyncPolicy/Type.dhall
      )
}
