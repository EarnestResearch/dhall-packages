{ eventProtocol =
      ./io.argoproj.common.EventProtocol.dhall sha256:595717e9898866ffc565bbba97992241804679d9af1b2ae7240eb92edafb4377
    ? ./io.argoproj.common.EventProtocol.dhall
, eventSource = None Text
, service =
    None
      (   ./../types/io.argoproj.common.ServiceTemplateSpec.dhall sha256:ef06209b28bc207a40a2cc0bbfdc69448437b0775e7c5a6401bcb1c46c023d37
        ? ./../types/io.argoproj.common.ServiceTemplateSpec.dhall
      )
, watchers =
    None
      (   ./../types/io.argoproj.gateway.v1alpha1.NotificationWatchers.dhall sha256:c47273f6168c3b077eecdf35188a3b42fe998d7c236d82d1b1e2dc30fc36b8ce
        ? ./../types/io.argoproj.gateway.v1alpha1.NotificationWatchers.dhall
      )
}
