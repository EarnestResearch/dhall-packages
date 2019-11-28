{ defaults =
      ./defaults.dhall sha256:2319d102500bd719675f8151b4e84b12e488651d8c07fd9b888ab3a800c4f41d
    ? ./defaults.dhall
, types =
      ./types.dhall sha256:ab35786728384eacc1df2a359135ccfc6c141076b664df4a11c771bff39ec15f
    ? ./types.dhall
, typesUnion =
      ./typesUnion.dhall sha256:33e9a9d619f6b202ac3cfc6f9a9174987de9272c8e25f1f313c6441612da3611
    ? ./typesUnion.dhall
, schemas =
      ./schemas.dhall sha256:0b2f1fd43591a5f4df3156179f601fbea9adc86c740becf5629570bf82a8874e
    ? ./schemas.dhall
}
