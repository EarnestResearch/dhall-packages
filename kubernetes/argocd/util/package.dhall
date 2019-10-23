{ makeApp =
      ./makeApp.dhall sha256:edbdeaebf533b10f71e1a573d800dfa9b9dbf7879eaacf91486f03038e1bb98f
    ? ./makeApp.dhall
, withSyncWave =
      ./withSyncWave.dhall sha256:538530354d50fb108895e1d5f782bdc805615981b4afb8c3c4ba84bee66f6195
    ? ./withSyncWave.dhall
, AppConfig =
      ./AppConfig.dhall sha256:68838f5a9710963f68ddd5ccff5f3200d2e5292dc565969ee016020bab02355f
    ? ./AppConfig.dhall
, DhallAppConfig =
      ./DhallAppConfig/package.dhall sha256:b3c7ac222cfee6002a3f530ee606a132e2961a289f8ad6c46a2156369ad27c06
    ? ./DhallAppConfig/package.dhall
, HelmAppConfig =
      ./HelmAppConfig/package.dhall sha256:79427a8574bcf671e658f4efedfd57028a973c387feebee20faa334b0dbd4826
    ? ./HelmAppConfig/package.dhall
, KustomizeAppConfig =
      ./KustomizeAppConfig/package.dhall sha256:aae64bca0fb64e40454ba98c7703ec14721926d20f93655c1027106f8cdaf9d8
    ? ./KustomizeAppConfig/package.dhall
, Source =
      ./Source/package.dhall sha256:6e4dcf3915d1baf344bfbd884c563c58009eb66ee31cf0f4ff36cb9d4f0828e2
    ? ./Source/package.dhall
}
