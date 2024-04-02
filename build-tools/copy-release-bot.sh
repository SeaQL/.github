#!/bin/bash
set -e
if [ -d ./build-tools ]; then
    find ../ -maxdepth 4 -type f -name 'release-bot.yml' -exec echo "" \; -exec echo {} \; -exec cp -TRv .github/workflows/release-bot-template.yml {} \;
else
    echo "Please execute this script from the repository root."
fi
