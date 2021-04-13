{ args : List Text
, command : List Text
, env :
    List
      (   ./io.k8s.api.core.v1.EnvVar.dhall sha256:f65fc60c0ee435d1e9e9fb0023420d8286ff27b3a50aa520dbe6b0a22b266783
        ? ./io.k8s.api.core.v1.EnvVar.dhall
      )
, envFrom :
    List
      (   ./io.k8s.api.core.v1.EnvFromSource.dhall sha256:dfcc1bb473c7306a41d254589fbc657b21a06c0bae47a411c9d9b7f1b3b07f5d
        ? ./io.k8s.api.core.v1.EnvFromSource.dhall
      )
, name : Text
, ports :
    List
      (   ./io.k8s.api.core.v1.ContainerPort.dhall sha256:9fe52644d6d73a3b3611fc07d0e715b798ca66b722d493145521bc353aaa1db1
        ? ./io.k8s.api.core.v1.ContainerPort.dhall
      )
, source : Text
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
      (   ./io.k8s.api.core.v1.Lifecycle.dhall sha256:68b42e890078309297113c05701503a4d25778620bf338533eff4c8066d0995b
        ? ./io.k8s.api.core.v1.Lifecycle.dhall
      )
, livenessProbe :
    Optional
      (   ./io.k8s.api.core.v1.Probe.dhall sha256:64fba2827fb21955f925b876275d1ed68be04d3e216053ffc385a05f8ab62cde
        ? ./io.k8s.api.core.v1.Probe.dhall
      )
, readinessProbe :
    Optional
      (   ./io.k8s.api.core.v1.Probe.dhall sha256:64fba2827fb21955f925b876275d1ed68be04d3e216053ffc385a05f8ab62cde
        ? ./io.k8s.api.core.v1.Probe.dhall
      )
, resources :
    Optional
      (   ./io.k8s.api.core.v1.ResourceRequirements.dhall sha256:e6a52f46fab854b0ba0f7267cbea09584e22585481acfc0959e205dd5f1cb30a
        ? ./io.k8s.api.core.v1.ResourceRequirements.dhall
      )
, securityContext :
    Optional
      (   ./io.k8s.api.core.v1.SecurityContext.dhall sha256:25fd3cff5ea60651e9987ae5b42a6b0edcb312d69213b6b9093fc205412f8e4b
        ? ./io.k8s.api.core.v1.SecurityContext.dhall
      )
, stdin : Optional Bool
, stdinOnce : Optional Bool
, terminationMessagePath : Optional Text
, terminationMessagePolicy : Optional Text
, tty : Optional Bool
, workingDir : Optional Text
}
