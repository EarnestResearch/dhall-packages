{ apiVersion : Text
, items :
    List
      (   ./io.argoproj.workflow.v1alpha1.Workflow.dhall sha256:f3a816e0be2f93d473718234a7a513f7c98d04545a27c2d23c95fceefa7fce86
        ? ./io.argoproj.workflow.v1alpha1.Workflow.dhall
      )
, kind : Text
, metadata :
      ./io.k8s.apimachinery.pkg.apis.meta.v1.ListMeta.dhall sha256:96b722fff4d997e9c32020312107b8730133ff9aedee32c5a8e30d4b762e9dcb
    ? ./io.k8s.apimachinery.pkg.apis.meta.v1.ListMeta.dhall
}
