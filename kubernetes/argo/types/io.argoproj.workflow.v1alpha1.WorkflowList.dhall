{ apiVersion : Text
, items :
    List
      (   ./io.argoproj.workflow.v1alpha1.Workflow.dhall sha256:951176b8e0f053e4bf461118aed05464c70809ac4acaf930e6803df79a809445
        ? ./io.argoproj.workflow.v1alpha1.Workflow.dhall
      )
, kind : Text
, metadata :
      ./io.k8s.apimachinery.pkg.apis.meta.v1.ListMeta.dhall sha256:2c5cb1400b57320ba1035a003efe1fc85d9eee3d40d425d1987523d61415a6de
    ? ./io.k8s.apimachinery.pkg.apis.meta.v1.ListMeta.dhall
}
