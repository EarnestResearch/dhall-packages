{ args = [] : List Text
, command = [] : List Text
, env =
    [] : List
           (   ./../types/io.k8s.api.core.v1.EnvVar.dhall sha256:05e1e15c69097b487387e7e81355cb3e860b9635854aeb57f3068ac6bb629dcb
             ? ./../types/io.k8s.api.core.v1.EnvVar.dhall
           )
, envFrom =
    [] : List
           (   ./../types/io.k8s.api.core.v1.EnvFromSource.dhall sha256:90f7afc7134952726f1781b15e2661c03f240530a7dfd0ca0041b9c67d508aac
             ? ./../types/io.k8s.api.core.v1.EnvFromSource.dhall
           )
, ports =
    [] : List
           (   ./../types/io.k8s.api.core.v1.ContainerPort.dhall sha256:4e77a1c7092e5ef28542406404e3f44234fa81dea270e09f468e79ba428a575c
             ? ./../types/io.k8s.api.core.v1.ContainerPort.dhall
           )
, volumeDevices =
    [] : List
           (   ./../types/io.k8s.api.core.v1.VolumeDevice.dhall sha256:41d225bedf28907d18bcf746b630ad52788af8ae1a1d1236798fdf439727ad32
             ? ./../types/io.k8s.api.core.v1.VolumeDevice.dhall
           )
, volumeMounts =
    [] : List
           (   ./../types/io.k8s.api.core.v1.VolumeMount.dhall sha256:250e19fec8a11c0b0f74114cbf2d1e0730b25a9bfbaf74902f3a15c5e1867c13
             ? ./../types/io.k8s.api.core.v1.VolumeMount.dhall
           )
, image = None Text
, imagePullPolicy = None Text
, lifecycle =
    None
      (   ./../types/io.k8s.api.core.v1.Lifecycle.dhall sha256:761e28fdc9fbd704c33e47943d81338e2951ad9cd46079181a5c6d4577ce26ce
        ? ./../types/io.k8s.api.core.v1.Lifecycle.dhall
      )
, livenessProbe =
    None
      (   ./../types/io.k8s.api.core.v1.Probe.dhall sha256:f2421c9f700dd50fc6e38dec8a2944e631a1065f70b22697c57410f63172929c
        ? ./../types/io.k8s.api.core.v1.Probe.dhall
      )
, mirrorVolumeMounts = None Bool
, readinessProbe =
    None
      (   ./../types/io.k8s.api.core.v1.Probe.dhall sha256:f2421c9f700dd50fc6e38dec8a2944e631a1065f70b22697c57410f63172929c
        ? ./../types/io.k8s.api.core.v1.Probe.dhall
      )
, resources =
    None
      (   ./../types/io.k8s.api.core.v1.ResourceRequirements.dhall sha256:da094174f6b3fa10b24697e77ef59512cc2e43c538deef203532c36a4cc3dad2
        ? ./../types/io.k8s.api.core.v1.ResourceRequirements.dhall
      )
, securityContext =
    None
      (   ./../types/io.k8s.api.core.v1.SecurityContext.dhall sha256:ae334ad99dfb4d0d69fd0826eab7af27147f0713a7eecccf4b99f697488704c8
        ? ./../types/io.k8s.api.core.v1.SecurityContext.dhall
      )
, stdin = None Bool
, stdinOnce = None Bool
, terminationMessagePath = None Text
, terminationMessagePolicy = None Text
, tty = None Bool
, workingDir = None Text
}
