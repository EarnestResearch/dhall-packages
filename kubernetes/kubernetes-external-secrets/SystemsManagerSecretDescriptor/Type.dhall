{ backendType :
      ../BackendType/Type.dhall sha256:d5e534d36367916cd0ea677e8dd9365c99c0be7632f02c124670bf2d5f8886ea
    ? ../BackendType/Type.dhall
, data :
    List
      (   ../SystemsManagerExternalData/Type.dhall sha256:de7225d1dfd26a74710c2a17d3c1e09a9ef637aa1d0ac697e03673c141cd7e03
        ? ../SystemsManagerExternalData/Type.dhall
      )
}
