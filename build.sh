#!/bin/bash

set -eux

# Prepare Platforms
export PLATFORM=${PLATFORM:-amd}
echo "Building for $PLATFORM"
cp platforms/$PLATFORM/.config files/linux/.config

rm -rf mkosi.skeleton
rm -rf mkosi.images/initrd/mkosi.skeleton

# Build TimelessOS Base & Artifacts
bst build builds/base.bst
bst build builds/initramfs.bst

# Checkout the built artifacts
bst artifact checkout builds/base.bst -f --directory mkosi.images/base/mkosi.skeleton
bst artifact checkout builds/initramfs.bst -f --directory mkosi.images/initrd/mkosi.skeleton
