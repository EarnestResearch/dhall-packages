{ defaults =
      ./defaults.dhall sha256:e1996555a811f29caa92ed7cbb863310fa9401d6bd46fbcfbef3eb162b53f67e
    ? ./defaults.dhall
, types =
      ./types.dhall sha256:d8e9842869effec98be953da2b8307e79f7aea90791b38eca203ef5db7c7a0b5
    ? ./types.dhall
, typesUnion =
      ./typesUnion.dhall sha256:8c23e2f66b1ed58160fe5578128b5a15995c166d5eeed6820a452e611b6ee9fb
    ? ./typesUnion.dhall
, schemas =
      ./schemas.dhall sha256:5e3a55acd379ed2892dee5959c4686353d9aeca00d24e636d5fbe56c0ed29c7f
    ? ./schemas.dhall
}
