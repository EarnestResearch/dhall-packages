{ Application =
      ./Application/package.dhall sha256:8ccca3adfe68d6acb15cf540b6d2595967cd508fc59ea3ccaa586e35b503f973
    ? ./Application/package.dhall
, ApplicationSpec =
      ./ApplicationSpec/package.dhall sha256:f8a31d4039c8c96352f45414fd2cdfe9ab981a7c036904bd4d4c13ed7762dd44
    ? ./ApplicationSpec/package.dhall
, ClusterResource =
      ./ClusterResource/package.dhall sha256:828ecf9c58164b6b726669656ca2fbd13790dbd31b5a18443f8f09f89a78d875
    ? ./ClusterResource/package.dhall
, DestinationSpec =
      ./DestinationSpec/package.dhall sha256:a0109e610c500bb09d23234e5b6366cbdd9557fb08cd4e9ff3d71e1cf7167a06
    ? ./DestinationSpec/package.dhall
, Difference =
      ./Difference/package.dhall sha256:e3ccc182d0cfb5ffce168d53c05498e469132843795820530dd745206b5f72fc
    ? ./Difference/package.dhall
, HelmSourceSpec =
      ./HelmSourceSpec/package.dhall sha256:380ded7e9ccb3e786facd647fd0d28bb6df20b9dce93e194413b7f6968a39a53
    ? ./HelmSourceSpec/package.dhall
, HelmSpec =
      ./HelmSpec/package.dhall sha256:1614bee24c1c396e322f826350481349c3c1342e1e6edcdae7c6925bc9c2224a
    ? ./HelmSpec/package.dhall
, KustomizeSourceSpec =
      ./KustomizeSourceSpec/package.dhall sha256:26b8be0970fc46cfdfcb9b36aaeed62d089f1540667b7ecfd9ada4abd6c4a205
    ? ./KustomizeSourceSpec/package.dhall
, KustomizeSpec =
      ./KustomizeSpec/package.dhall sha256:7201abb06c924ff36512f982666f8031ecea556f5a9395f4f0c176b1566b9e91
    ? ./KustomizeSpec/package.dhall
, KsonnetSourceSpec =
      ./KsonnetSourceSpec/package.dhall sha256:963618cfcef9ed8aad893f892408de7d3e1133ade3877102b2b46537e162c33c
    ? ./KsonnetSourceSpec/package.dhall
, Parameter =
      ./Parameter/package.dhall sha256:13aa5f864c5f82d58b01be2a2d61afc640f029df989de47950f087c02c5aa2ca
    ? ./Parameter/package.dhall
, PluginSourceSpec =
      ./PluginSourceSpec/package.dhall sha256:0d6745d353c85c4724b82b3bdba302e8c524349ee2b3a5d68c6916072af39b97
    ? ./PluginSourceSpec/package.dhall
, PluginSpec =
      ./PluginSpec/package.dhall sha256:fd9dd420c9ea830231af7e7893ea217f2f7ca35c313cd0a319f80443ac6c84b9
    ? ./PluginSpec/package.dhall
, Project =
      ./Project/package.dhall sha256:43e36b1dc0eec92d602643cbee9b21bf5d27b8912cabf8d88a1776b5a5b1f7d8
    ? ./Project/package.dhall
, ProjectSpec =
      ./ProjectSpec/package.dhall sha256:4c9f9e00802ec63068f267006f3ecb66efbc9c6a927553eafc5862ce30da1f83
    ? ./ProjectSpec/package.dhall
, SourceSpec =
      ./SourceSpec/package.dhall sha256:edb5091c3a6d426780564c737853f3a4478466f2a92cc50e4e44a85d28eb8481
    ? ./SourceSpec/package.dhall
, SyncPolicy =
      ./SyncPolicy/package.dhall sha256:364c3ab02547f12ac666036adf8d0b1c3b763c75b3b64964f06b6348ede822a2
    ? ./SyncPolicy/package.dhall
, SyncPolicyAutomated =
      ./SyncPolicyAutomated/package.dhall sha256:12684bfa3f833c4dd1c502ee5762762642a77e6cffe782ceec071325136215dd
    ? ./SyncPolicyAutomated/package.dhall
, TypesUnion =
      ./TypesUnion.dhall sha256:78e4af72e3e73d3eb67ecf4e431cf93ee3213d15ed42326f163aafed0a0ba866
    ? ./TypesUnion.dhall
, util =
      ./util/package.dhall sha256:5f953306c20ac996192e19dec24c040ef1414cd0cd29cb31d6d075fd4c81ffa8
    ? ./util/package.dhall
}
