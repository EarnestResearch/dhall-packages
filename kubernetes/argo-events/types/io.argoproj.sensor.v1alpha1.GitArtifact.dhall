{ cloneDirectory : Text
, filePath : Text
, url : Text
, branch : Optional Text
, creds :
    Optional
      (   ./io.argoproj.sensor.v1alpha1.GitCreds.dhall sha256:a6e835057771bb52d0fa5ac49956031f69973c30cd186e0b757c88de270174e4
        ? ./io.argoproj.sensor.v1alpha1.GitCreds.dhall
      )
, namespace : Optional Text
, ref : Optional Text
, remote :
    Optional
      (   ./io.argoproj.sensor.v1alpha1.GitRemoteConfig.dhall sha256:e1639cc8552108b90d660a4d917083b2c296cff3e61d805f885784b3a00299cc
        ? ./io.argoproj.sensor.v1alpha1.GitRemoteConfig.dhall
      )
, sshKeyPath : Optional Text
, tag : Optional Text
}
