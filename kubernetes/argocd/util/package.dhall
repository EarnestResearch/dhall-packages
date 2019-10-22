{ makeApp =
      ./makeApp.dhall sha256:9bed22452e97282325f9e4d2bfcb0b5c5a26cc3b956557dfa1cfefb4541e3931
    ? ./makeApp.dhall
, withSyncWave =
      ./withSyncWave.dhall sha256:538530354d50fb108895e1d5f782bdc805615981b4afb8c3c4ba84bee66f6195
    ? ./withSyncWave.dhall
, AppConfig =
      ./AppConfig.dhall sha256:1775eb24a12afb4e8ef0495040c5ba95e46672ff5eb99d187785c4124f273ec8
    ? ./AppConfig.dhall
, DhallAppConfig =
      ./DhallAppConfig/package.dhall sha256:b3c7ac222cfee6002a3f530ee606a132e2961a289f8ad6c46a2156369ad27c06
    ? ./DhallAppConfig/package.dhall
, HelmAppConfig =
      ./HelmAppConfig/package.dhall sha256:79427a8574bcf671e658f4efedfd57028a973c387feebee20faa334b0dbd4826
    ? ./HelmAppConfig/package.dhall
, Source =
      ./Source/package.dhall sha256:6e4dcf3915d1baf344bfbd884c563c58009eb66ee31cf0f4ff36cb9d4f0828e2
    ? ./Source/package.dhall
}
