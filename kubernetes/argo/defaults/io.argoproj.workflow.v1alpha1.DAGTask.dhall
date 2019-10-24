{ continueOn =
      ./io.argoproj.workflow.v1alpha1.ContinueOn.dhall sha256:fe1dfcc5d868918b5069e3b78960ef0e5b6be84981ef314ac80f7511018eaf67
    ? ./io.argoproj.workflow.v1alpha1.ContinueOn.dhall
, dependencies = [] : List Text
, withItems =
    [] : List
           (   ./../types/io.argoproj.workflow.v1alpha1.Item.dhall sha256:b9c75dfe7b1571f8b606d709a1103d67f86f16e04e63aa0de9856cd00904d4a2
             ? ./../types/io.argoproj.workflow.v1alpha1.Item.dhall
           )
, withSequence =
      ./io.argoproj.workflow.v1alpha1.Sequence.dhall sha256:e89c73327f41a482a14b764fd3cb1b922f3c28d48967c6f146126b27660b371a
    ? ./io.argoproj.workflow.v1alpha1.Sequence.dhall
, arguments =
    None
      (   ./../types/io.argoproj.workflow.v1alpha1.Arguments.dhall sha256:3b3500b2bde09bf7a2eccbede95fc8c8daad1992eaef0b71c5d72d01ab2d9117
        ? ./../types/io.argoproj.workflow.v1alpha1.Arguments.dhall
      )
, when = None Text
, withParam = None Text
}
