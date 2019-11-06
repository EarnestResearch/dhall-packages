{ continueOn :
      ./io.argoproj.workflow.v1alpha1.ContinueOn.dhall sha256:b8bc49f33fc12accd4384d5415f73c6736989069589f506a87654b1395837813
    ? ./io.argoproj.workflow.v1alpha1.ContinueOn.dhall
, withItems :
    List
      (   ./io.argoproj.workflow.v1alpha1.Item.dhall sha256:b9c75dfe7b1571f8b606d709a1103d67f86f16e04e63aa0de9856cd00904d4a2
        ? ./io.argoproj.workflow.v1alpha1.Item.dhall
      )
, withSequence :
      ./io.argoproj.workflow.v1alpha1.Sequence.dhall sha256:e7cfed05c1b1fe58ce672e268aef05f8fb7e75b9ae3da9e21e2a691a76b5f8ae
    ? ./io.argoproj.workflow.v1alpha1.Sequence.dhall
, arguments :
    Optional
      (   ./io.argoproj.workflow.v1alpha1.Arguments.dhall sha256:3b3500b2bde09bf7a2eccbede95fc8c8daad1992eaef0b71c5d72d01ab2d9117
        ? ./io.argoproj.workflow.v1alpha1.Arguments.dhall
      )
, name : Optional Text
, template : Optional Text
, when : Optional Text
, withParam : Optional Text
}
