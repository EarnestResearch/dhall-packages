    (   ./schema.dhall sha256:668bf175901f6307293a86d6d43dbccb10ab74a7290547feea61be9417e6263f
      ? ./schema.dhall
    )
/\  { renderMutatingWebhook =
          ./renderMutatingWebhook.dhall sha256:594c7722600cf2d5b82f786e972ada53dc233ef2e7be20492df35f858d46e858
        ? ./renderMutatingWebhook.dhall
    , renderValidatingWebhook =
          ./renderValidatingWebhook.dhall sha256:5abd45ccbca34e7e2cb69826c5636c8cb9fb26baa31c12add82251651c133c5f
        ? ./renderValidatingWebhook.dhall
    }
