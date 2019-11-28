{ data :
    List
      (   ./io.argoproj.sensor.v1alpha1.DataFilter.dhall sha256:7177def91e3fa1d8550c2767a2cf9fa9644158ee26dd17ce9e53a1d7c350fd28
        ? ./io.argoproj.sensor.v1alpha1.DataFilter.dhall
      )
, name : Text
, time :
    Optional
      (   ./io.argoproj.sensor.v1alpha1.TimeFilter.dhall sha256:08b2e66593f50b2f8d059b80a2fe8b010c866918df8e8f61f5c65eb42061459b
        ? ./io.argoproj.sensor.v1alpha1.TimeFilter.dhall
      )
, context :
    Optional
      (   ./io.argoproj.common.EventContext.dhall sha256:5498b0a1675bbc617e96443115ac9911412a092930feb4e958ef995153fc4a1b
        ? ./io.argoproj.common.EventContext.dhall
      )
}
