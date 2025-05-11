#!/bin/bash

set -eux

# Prepare Platforms
export PLATFORM=${PLATFORM:-amd}
echo "Building for $PLATFORM"
cp platforms/$PLATFORM/.config files/linux/.config

# Build TimelessOS Base
bst build all.bst

# Checkout the built artifact
bst artifact checkout all.bst -f

# Move all to mkosi.skeleton
mv all mkosi.skeleton
