#!/bin/bash
set -e
if [ -d ./build-tools ]; then
    targets=(
        "sea-orm"
        "sea-query"
        "sea-schema"
        "starfish-ql"
        "seaography"
        "seaql.github.io"
        "sea-orm-tutorial"
        "sea-orm-cookbook"
    )

    for target in "${targets[@]}"; do
        cp -TRv .github/ISSUE_TEMPLATE "../${target}/.github/ISSUE_TEMPLATE"
        sed -i "s/\/.github\//\/${target}\//" "../${target}/.github/ISSUE_TEMPLATE/config.yml"
        sed -i "s/\/.github\//\/${target}\//" "../${target}/.github/ISSUE_TEMPLATE/feature-request.md"
        echo ""
    done
else
    echo "Please execute this script from the repository root."
fi
