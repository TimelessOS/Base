#!/bin/bash

set -eux

# Prepare Platforms
export PLATFORM=${PLATFORM:-amd}
echo "Building for $PLATFORM"
cp platforms/$PLATFORM/.config files/linux/.config

rm -rf mkosi.skeleton
rm -rf mkosi.images/initrd/mkosi.skeleton

# Build TimelessOS Base & Artifacts
bst build all.bst
bst build initramfs.bst

# Checkout the built artifacts
bst artifact checkout all.bst -f --directory mkosi.skeleton
bst artifact checkout initramfs.bst -f --directory mkosi.images/initrd/mkosi.skeleton

# Temporary until i can be bothered rebuilding the kernel
mv mkosi.skeleton/boot/vmlinuz mkosi.skeleton/boot/vmlinuz-6.14.6