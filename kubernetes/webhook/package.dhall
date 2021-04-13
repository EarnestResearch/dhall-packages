    (   ./schema.dhall sha256:668bf175901f6307293a86d6d43dbccb10ab74a7290547feea61be9417e6263f
      ? ./schema.dhall
    )
/\  { renderMutatingWebhook =
          ./renderMutatingWebhook.dhall sha256:59fbebfe4442f0e8b0c660c1e576c23d645f5fb36cda6fb97529425a465b2f7b
        ? ./renderMutatingWebhook.dhall
    , renderValidatingWebhook =
          ./renderValidatingWebhook.dhall sha256:808f1a5ab92562cb11e7a3602f4125df840bc5ab9891722f6c797463bfe1a02a
        ? ./renderValidatingWebhook.dhall
    }
