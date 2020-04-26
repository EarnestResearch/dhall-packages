{ policy :
    Optional
      (   ./io.argoproj.sensor.v1alpha1.TriggerPolicy.dhall sha256:4368ac346df3a447efddce45d73c3ce2a61b8255757adf6df5d5525a2ee3918b
        ? ./io.argoproj.sensor.v1alpha1.TriggerPolicy.dhall
      )
, resourceParameters :
    List
      (   ./io.argoproj.sensor.v1alpha1.TriggerParameter.dhall sha256:8a4ba38bbb1db06cd3aed94150e9c2733d7f3aed016d97d060491fa2f3af6b45
        ? ./io.argoproj.sensor.v1alpha1.TriggerParameter.dhall
      )
, template :
      ./io.argoproj.sensor.v1alpha1.TriggerTemplate.dhall sha256:05c939bd7766d566288b665e3bf52a80dd88ef3bb8d31b6f2f7eb00a468123da
    ? ./io.argoproj.sensor.v1alpha1.TriggerTemplate.dhall
, templateParameters :
    List
      (   ./io.argoproj.sensor.v1alpha1.TriggerParameter.dhall sha256:8a4ba38bbb1db06cd3aed94150e9c2733d7f3aed016d97d060491fa2f3af6b45
        ? ./io.argoproj.sensor.v1alpha1.TriggerParameter.dhall
      )
}
