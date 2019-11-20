{ data =
    [] : List
           (   ./../types/io.argoproj.sensor.v1alpha1.DataFilter.dhall sha256:7177def91e3fa1d8550c2767a2cf9fa9644158ee26dd17ce9e53a1d7c350fd28
             ? ./../types/io.argoproj.sensor.v1alpha1.DataFilter.dhall
           )
, time =
      ./io.argoproj.sensor.v1alpha1.TimeFilter.dhall sha256:b5bbef78ff0556b19f97a49f961d3aeb6a1d814357079d35dc2c6041b029f73e
    ? ./io.argoproj.sensor.v1alpha1.TimeFilter.dhall
, context =
    None
      (   ./../types/io.argoproj.common.EventContext.dhall sha256:5498b0a1675bbc617e96443115ac9911412a092930feb4e958ef995153fc4a1b
        ? ./../types/io.argoproj.common.EventContext.dhall
      )
}
