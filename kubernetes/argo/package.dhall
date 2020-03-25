{ defaults =
      ./defaults.dhall sha256:db5dad4c38eae6210abd45a29924498e732a67af18e219fa68da60282561c4ec
    ? ./defaults.dhall
, types =
      ./types.dhall sha256:1c1c80538951a0ea39a505518546a6b0919e3ec7eef266884bcf0108ee1409fe
    ? ./types.dhall
, typesUnion =
      ./typesUnion.dhall sha256:d4f9f480047a3dd3054557e7c01a262c52536f114711fb2811079a1c61a15381
    ? ./typesUnion.dhall
, schemas =
      ./schemas.dhall sha256:740e3d6befffa1dee6961e7b74708ba0360ba4c3dcb79adfa2442b9e6b4ea4f9
    ? ./schemas.dhall
}
