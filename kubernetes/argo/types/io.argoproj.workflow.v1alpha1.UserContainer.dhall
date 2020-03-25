{ args : List Text
, command : List Text
, env :
    List
      (   ./io.k8s.api.core.v1.EnvVar.dhall sha256:05e1e15c69097b487387e7e81355cb3e860b9635854aeb57f3068ac6bb629dcb
        ? ./io.k8s.api.core.v1.EnvVar.dhall
      )
, envFrom :
    List
      (   ./io.k8s.api.core.v1.EnvFromSource.dhall sha256:90f7afc7134952726f1781b15e2661c03f240530a7dfd0ca0041b9c67d508aac
        ? ./io.k8s.api.core.v1.EnvFromSource.dhall
      )
, name : Text
, ports :
    List
      (   ./io.k8s.api.core.v1.ContainerPort.dhall sha256:4e77a1c7092e5ef28542406404e3f44234fa81dea270e09f468e79ba428a575c
        ? ./io.k8s.api.core.v1.ContainerPort.dhall
      )
, volumeDevices :
    List
      (   ./io.k8s.api.core.v1.VolumeDevice.dhall sha256:41d225bedf28907d18bcf746b630ad52788af8ae1a1d1236798fdf439727ad32
        ? ./io.k8s.api.core.v1.VolumeDevice.dhall
      )
, volumeMounts :
    List
      (   ./io.k8s.api.core.v1.VolumeMount.dhall sha256:250e19fec8a11c0b0f74114cbf2d1e0730b25a9bfbaf74902f3a15c5e1867c13
        ? ./io.k8s.api.core.v1.VolumeMount.dhall
      )
, image : Optional Text
, imagePullPolicy : Optional Text
, lifecycle :
    Optional
      (   ./io.k8s.api.core.v1.Lifecycle.dhall sha256:761e28fdc9fbd704c33e47943d81338e2951ad9cd46079181a5c6d4577ce26ce
        ? ./io.k8s.api.core.v1.Lifecycle.dhall
      )
, livenessProbe :
    Optional
      (   ./io.k8s.api.core.v1.Probe.dhall sha256:f2421c9f700dd50fc6e38dec8a2944e631a1065f70b22697c57410f63172929c
        ? ./io.k8s.api.core.v1.Probe.dhall
      )
, mirrorVolumeMounts : Optional Bool
, readinessProbe :
    Optional
      (   ./io.k8s.api.core.v1.Probe.dhall sha256:f2421c9f700dd50fc6e38dec8a2944e631a1065f70b22697c57410f63172929c
        ? ./io.k8s.api.core.v1.Probe.dhall
      )
, resources :
    Optional
      (   ./io.k8s.api.core.v1.ResourceRequirements.dhall sha256:da094174f6b3fa10b24697e77ef59512cc2e43c538deef203532c36a4cc3dad2
        ? ./io.k8s.api.core.v1.ResourceRequirements.dhall
      )
, securityContext :
    Optional
      (   ./io.k8s.api.core.v1.SecurityContext.dhall sha256:ae334ad99dfb4d0d69fd0826eab7af27147f0713a7eecccf4b99f697488704c8
        ? ./io.k8s.api.core.v1.SecurityContext.dhall
      )
, stdin : Optional Bool
, stdinOnce : Optional Bool
, terminationMessagePath : Optional Text
, terminationMessagePolicy : Optional Text
, tty : Optional Bool
, workingDir : Optional Text
}
