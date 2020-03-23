    (   ./schema.dhall sha256:668bf175901f6307293a86d6d43dbccb10ab74a7290547feea61be9417e6263f
      ? ./schema.dhall
    )
/\  { renderMutatingWebhook =
          ./renderMutatingWebhook.dhall sha256:3a13bcf027103bb02716dee019d9a79293901c259540d086a89a7f03f64c8552
        ? ./renderMutatingWebhook.dhall
    , renderValidatingWebhook =
          ./renderValidatingWebhook.dhall sha256:2935ab3a2569b1a906d415c0db666d6d35e47f14ea30ed9f6fa75413cbef191a
        ? ./renderValidatingWebhook.dhall
    }
