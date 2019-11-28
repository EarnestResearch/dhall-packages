{ policy =
    None
      (   ../types/io.argoproj.sensor.v1alpha1.TriggerPolicy.dhall sha256:4368ac346df3a447efddce45d73c3ce2a61b8255757adf6df5d5525a2ee3918b
        ? ../types/io.argoproj.sensor.v1alpha1.TriggerPolicy.dhall
      )
, resourceParameters =
    [] : List
           (   ./../types/io.argoproj.sensor.v1alpha1.TriggerParameter.dhall sha256:8a4ba38bbb1db06cd3aed94150e9c2733d7f3aed016d97d060491fa2f3af6b45
             ? ./../types/io.argoproj.sensor.v1alpha1.TriggerParameter.dhall
           )
, template =
      ./io.argoproj.sensor.v1alpha1.TriggerTemplate.dhall sha256:ce6c6234deb3b2a3992280218dd2772bb9a9d14eadeb209b80dac7d2bfa8a602
    ? ./io.argoproj.sensor.v1alpha1.TriggerTemplate.dhall
, templateParameters =
    [] : List
           (   ./../types/io.argoproj.sensor.v1alpha1.TriggerParameter.dhall sha256:8a4ba38bbb1db06cd3aed94150e9c2733d7f3aed016d97d060491fa2f3af6b45
             ? ./../types/io.argoproj.sensor.v1alpha1.TriggerParameter.dhall
           )
}
