
#!/bin/bash

echo "Updating package version in README.md"

newVersion=$(grep '^version: [0-9]\+.[0-9]\+.[0-9]\+.*$' bricks/flutter_cora/brick.yaml | awk '{print $2}')

cat > bricks/flutter_cora/pubspec.yaml<< EOF
name: flutter_cora_brick
version: $newVersion
environment:
  sdk: ^3.5.3
EOF

melos version -a
