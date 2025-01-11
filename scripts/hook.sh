#!/bin/bash

echo "Hook"

rm bricks/flutter_cora/pubspec.yaml

git add bricks/flutter_cora/pubspec.yaml

git commit --amend --no-edit
