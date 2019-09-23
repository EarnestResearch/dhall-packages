for file in $(find . -name '*.dhall'); do
    echo "${file}"

    dhall --ascii freeze --all --cache --inplace "${file}"
done
