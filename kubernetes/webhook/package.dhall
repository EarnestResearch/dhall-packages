    (   ./schema.dhall sha256:668bf175901f6307293a86d6d43dbccb10ab74a7290547feea61be9417e6263f
      ? ./schema.dhall
    )
/\  { renderMutatingWebhook =
          ./renderMutatingWebhook.dhall sha256:13d289ee38ea74dca59563294afb662c10edf279f15561f528153f922c2971f2
        ? ./renderMutatingWebhook.dhall
    , renderValidatingWebhook =
          ./renderValidatingWebhook.dhall sha256:4f3fa3e0b227a632f90c66019dcd3e5d0bf4cb2eb1764b6a066b8e6878a7bc9d
        ? ./renderValidatingWebhook.dhall
    }
