for file in $(find . -name '*.dhall'); do
    echo "${file}"

    dhall freeze --all --cache --inplace "${file}"
done
