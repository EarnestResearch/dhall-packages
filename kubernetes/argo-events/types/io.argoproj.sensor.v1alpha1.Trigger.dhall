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
      ./io.argoproj.sensor.v1alpha1.TriggerTemplate.dhall sha256:27a761b639686171d9f629b914e22ea0cd34e59e5022f1d5c26a9b3a334a3e24
    ? ./io.argoproj.sensor.v1alpha1.TriggerTemplate.dhall
, templateParameters :
    List
      (   ./io.argoproj.sensor.v1alpha1.TriggerParameter.dhall sha256:8a4ba38bbb1db06cd3aed94150e9c2733d7f3aed016d97d060491fa2f3af6b45
        ? ./io.argoproj.sensor.v1alpha1.TriggerParameter.dhall
      )
}
