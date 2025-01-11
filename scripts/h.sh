
#!/bin/bash

# Script for update package version in README.md (usage section)

echo "Updating package version in brick.yaml"

for pubspecFile in $(git diff --name-only "bricks/*/pubspec.yaml")
do
    echo "Loop"
    newVersion=$(grep '^version: [0-9]\+.[0-9]\+.[0-9]\+.*$' $pubspecFile | awk '{print $2}')
    brickFile="$(dirname $pubspecFile)/brick.yaml"
    # sed -i "s/version: ^[0-9]\+.[0-9]\+.[0-9]\+.*$/version: $newVersion/" $brickFile # old
    if [[ "$OSTYPE" == "darwin"* ]]; then
      sed -i '' "s/version: [0-9]\+\.[0-9]\+\.[0-9]\+.*/version: $newVersion/" "$brickFile"
    else
      sed -i "s/version: [0-9]\+\.[0-9]\+\.[0-9]\+.*/version: $newVersion/" "$brickFile"
    fi
    git add $brickFile
done

echo "brick.yaml updated"
