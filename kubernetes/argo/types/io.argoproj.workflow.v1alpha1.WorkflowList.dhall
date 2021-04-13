{ apiVersion : Text
, items :
    List
      (   ./io.argoproj.workflow.v1alpha1.Workflow.dhall sha256:6f43135469ced5656bba4c2b8ff993f88c1419479340ada5b603ea9b37683703
        ? ./io.argoproj.workflow.v1alpha1.Workflow.dhall
      )
, kind : Text
, metadata :
      ./io.k8s.apimachinery.pkg.apis.meta.v1.ListMeta.dhall sha256:6eff47294815ae850d3e11a619c955c8024c8d0702cd70777922b02d587653bc
    ? ./io.k8s.apimachinery.pkg.apis.meta.v1.ListMeta.dhall
}
