#!/bin/bash
repository_name_list=(
    "clm-api-user-management"
    # "clm-api-contract-management"
    # "clm-api-signflow-management"
    # "clm-pdf2html"
    # "clm-mecab-api"
    # "clm-api-autoextractor"
)

for name in "${repository_name_list[@]}"; do
    repository="git@github.com:liris-legal/${name}.git"
    git clone -b develop ${repository}
done

unzip -q ENV.zip
(cd ENV/; tar cf - *) | tar xf -

rm -r ENV