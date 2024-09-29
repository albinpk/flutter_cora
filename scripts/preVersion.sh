#!/bin/bash

# Script for update package version in README.md (usage section)

for pubspecFile in $(git diff --name-only "packages/*/pubspec.yaml")
do
    newVersion=$(grep '^version: [0-9]\+.[0-9]\+.[0-9]\+.*$' $pubspecFile | awk '{print $2}')
    readmeDir="$(dirname $pubspecFile)/README.md"
    packageName=$(basename $(dirname $pubspecFile))
    sed -i "s/  $packageName: ^[0-9]\+.[0-9]\+.[0-9]\+.*$/  $packageName: ^$newVersion/" $readmeDir
    git add $readmeDir
done
