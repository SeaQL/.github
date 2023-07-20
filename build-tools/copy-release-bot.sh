#!/bin/bash
set -e
if [ -d ./build-tools ]; then
    targets=(
        "sea-orm"
        "sea-query"
        "sea-schema"
        "starfish-ql"
        "seaography"
        "sea-streamer"
    )

    for target in "${targets[@]}"; do
        cp -TRv .github/workflows/release-bot.yml "../${target}/.github/workflows/release-bot.yml"
        echo ""
    done
else
    echo "Please execute this script from the repository root."
fi
