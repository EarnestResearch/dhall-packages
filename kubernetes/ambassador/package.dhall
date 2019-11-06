{ CircuitBreaker =
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
      ./Mapping/package.dhall sha256:705a53b80b67432023e6f443775a46ee05cb729a4de3323225d0f99fb73acf69
    ? ./Mapping/package.dhall
, RetryOnValue =
      ./RetryOnValue/Type.dhall sha256:f4b75c7df63d13e9637cc950fc6109465f6cbaaffb767248e42f963ed36b28b0
    ? ./RetryOnValue/Type.dhall
, RetryPolicy =
      ./RetryPolicy/package.dhall sha256:282013bffbfac5ac566de2155486361b9c2102c9de2f0ca076ee29e8e96bfcfc
    ? ./RetryPolicy/package.dhall
}
