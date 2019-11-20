{ policy :
      ./io.argoproj.sensor.v1alpha1.TriggerPolicy.dhall sha256:4368ac346df3a447efddce45d73c3ce2a61b8255757adf6df5d5525a2ee3918b
    ? ./io.argoproj.sensor.v1alpha1.TriggerPolicy.dhall
, resourceParameters :
    List
      (   ./io.argoproj.sensor.v1alpha1.TriggerParameter.dhall sha256:8a4ba38bbb1db06cd3aed94150e9c2733d7f3aed016d97d060491fa2f3af6b45
        ? ./io.argoproj.sensor.v1alpha1.TriggerParameter.dhall
      )
, template :
      ./io.argoproj.sensor.v1alpha1.TriggerTemplate.dhall sha256:fa9b003f910b2703e3bc87dcd1ba1a509405895a2cdb1e871c124041feb8e1bf
    ? ./io.argoproj.sensor.v1alpha1.TriggerTemplate.dhall
, templateParameters :
    List
      (   ./io.argoproj.sensor.v1alpha1.TriggerParameter.dhall sha256:8a4ba38bbb1db06cd3aed94150e9c2733d7f3aed016d97d060491fa2f3af6b45
        ? ./io.argoproj.sensor.v1alpha1.TriggerParameter.dhall
      )
}
