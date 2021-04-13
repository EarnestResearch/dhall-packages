{ defaults =
      ./defaults.dhall sha256:9f73f5f689b75f7d3deea8fb4d2ce803b79c83fcd6a8c0190b42104eed516085
    ? ./defaults.dhall
, types =
      ./types.dhall sha256:991fa8c626c13d1e2299fffbc6e34bc67e40d38b380a6add86b0085e41a29faa
    ? ./types.dhall
, typesUnion =
      ./typesUnion.dhall sha256:82e19ae33e686bc7f979456853601666dd161dfec401d35d5e70f7c8ed2beee4
    ? ./typesUnion.dhall
, schemas =
      ./schemas.dhall sha256:09ee9785357912dfdc88d28d77e49d92d6e5704fb8ab60e07a701c7c0089fac2
    ? ./schemas.dhall
}
