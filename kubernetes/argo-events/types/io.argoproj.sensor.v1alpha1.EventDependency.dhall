{ name : Text
, connected : Optional Bool
, filters :
    Optional
      (   ./io.argoproj.sensor.v1alpha1.EventDependencyFilter.dhall sha256:9cf11d71d3ba3bb2567725359cc81265335fe484cd130fa212a8ed6619e79799
        ? ./io.argoproj.sensor.v1alpha1.EventDependencyFilter.dhall
      )
}
