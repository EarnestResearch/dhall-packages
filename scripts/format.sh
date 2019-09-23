for file in $(find . -name '*.dhall'); do
    echo "${file}"

    dhall --ascii format --inplace "${file}"
done
