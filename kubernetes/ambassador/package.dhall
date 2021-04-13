{ AuthService =
      ./AuthService/package.dhall sha256:74954a787751f0639dbbb752a4843c7c0e32f7f3168784ca6927af89961ce8c7
    ? ./AuthService/package.dhall
, AuthServiceIncludeBody =
      ./AuthServiceIncludeBody/package.dhall sha256:4f65364e68fd4e6059f72a338fc50c92c519839c6e9f452dbc0befdc46e0b75f
    ? ./AuthServiceIncludeBody/package.dhall
, AuthServiceProtocol =
      ./AuthServiceProtocol/Type.dhall sha256:313bceb2e0eb1eaabdeeb91adc6d6690eb9cd21941ddbf20a22012b188330a2d
    ? ./AuthServiceProtocol/Type.dhall
, AuthServiceSpec =
      ./AuthServiceSpec/package.dhall sha256:697637fccf454839dc0683172b39a60d654ce4265b382d4c987b8136dcb85d52
    ? ./AuthServiceSpec/package.dhall
, AuthServiceStatusOnError =
      ./AuthServiceStatusOnError/package.dhall sha256:afaec6d7f1067f9885c725ed4b0286a58a7285380a76d58276c3150d8efc6900
    ? ./AuthServiceStatusOnError/package.dhall
, CircuitBreaker =
      ./CircuitBreaker/package.dhall sha256:9aa003224971ea5f5c8dde34750a6122dbbf9949bdb7a4d2495f12cbdb23ca14
    ? ./CircuitBreaker/package.dhall
, Cors =
      ./Cors/package.dhall sha256:7ee41e219e5e65cc179e0e1adee49fb020b571f40e18acf4d3374a28d5ad6cce
    ? ./Cors/package.dhall
, HeaderValue =
      ./HeaderValue/Type.dhall sha256:39b0867682d87243817188faa79e0eb9d5300cbacb7bcbdfcc7e6cb1c0e30565
    ? ./HeaderValue/Type.dhall
, Loadbalancer =
      ./Loadbalancer/package.dhall sha256:51332ae983f1bf9c09ba31010bab607628247c5227dcebbaed84e5bdd9d13cb9
    ? ./Loadbalancer/package.dhall
, LoadbalancerCookie =
      ./LoadbalancerCookie/package.dhall sha256:03d5a0356d04cbb1cfa82e11f3d883223a906504b4f617414b12037b467083cd
    ? ./LoadbalancerCookie/package.dhall
, LoadbalancerPolicy =
      ./LoadbalancerPolicy/package.dhall sha256:4745eec474d5fee647461c62cc5ad690860f16dfa5a9cf19b6763d127ec72c0c
    ? ./LoadbalancerPolicy/package.dhall
, Mapping =
      ./Mapping/package.dhall sha256:6bf2addbff4b39f94c27269e2d5508b6fb41cb156d299bb99298e61d4ab1657c
    ? ./Mapping/package.dhall
, MappingSpec =
      ./MappingSpec/package.dhall sha256:ac43b68bd088657681858fe761529135357019bfb55faa09cedf85a0df3780ae
    ? ./MappingSpec/package.dhall
, MappingV2 =
      ./MappingV2/package.dhall sha256:722f28e947b0c89e8cdd9711f2bd222fbea94d30b2469b14107cb9db2eff584b
    ? ./MappingV2/package.dhall
, MappingSpecV2 =
      ./MappingSpecV2/package.dhall sha256:fa039d5cf9e82d6b869f50b59db25ac319e4930b6ace9ad8160418de92639415
    ? ./MappingSpecV2/package.dhall
, RateLimit =
      ./RateLimit/Type.dhall sha256:ff00d495134b63b0cf9b13a8d5b8433ec09023e1be6b3ca214009ab501db2c02
    ? ./RateLimit/Type.dhall
, RetryOnValue =
      ./RetryOnValue/Type.dhall sha256:f4b75c7df63d13e9637cc950fc6109465f6cbaaffb767248e42f963ed36b28b0
    ? ./RetryOnValue/Type.dhall
, RetryPolicy =
      ./RetryPolicy/package.dhall sha256:282013bffbfac5ac566de2155486361b9c2102c9de2f0ca076ee29e8e96bfcfc
    ? ./RetryPolicy/package.dhall
}
