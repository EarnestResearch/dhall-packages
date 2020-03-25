{ makeApp =
      ./makeApp.dhall sha256:5b6c919309b9c5d098bd3569c4a3ebb396c9ac6c4e56e8b428d1b9af82dd2e80
    ? ./makeApp.dhall
, withSyncWave =
      ./withSyncWave.dhall sha256:46e538c69e72ab64dc92d213cd3dfa7794576bed5fcbd77467e4f4d1ca176a65
    ? ./withSyncWave.dhall
, AppConfig =
      ./AppConfig.dhall sha256:c610cee69a0557cfb4e4ec51de18a89201a4d7fc4ca2c9a6d4f2372f5c64d968
    ? ./AppConfig.dhall
, DhallAppConfig =
      ./DhallAppConfig/package.dhall sha256:8935dda412af56feed55f40666f153aebb52723f168084dfc29d93b09dcbc2c4
    ? ./DhallAppConfig/package.dhall
, HelmAppConfig =
      ./HelmAppConfig/package.dhall sha256:0271cc2f80aef578c75eb97f64f1dc86bc7e45161c1e6f7d9d2515a311afdeb2
    ? ./HelmAppConfig/package.dhall
, KustomizeAppConfig =
      ./KustomizeAppConfig/package.dhall sha256:9bb144cf633e72d541712cead93628cd746e71ea33ba6ecb5bd592451f481c18
    ? ./KustomizeAppConfig/package.dhall
, Source =
      ./Source/package.dhall sha256:6e4dcf3915d1baf344bfbd884c563c58009eb66ee31cf0f4ff36cb9d4f0828e2
    ? ./Source/package.dhall
}
