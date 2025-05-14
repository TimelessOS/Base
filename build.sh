#!/bin/bash
# We need a better system at some point, but don't fix whats not broken

set -eux

# Prepare Platforms
export PLATFORM=${PLATFORM:-amd-qemu}
echo "Building for $PLATFORM"
cp platforms/$PLATFORM/.config files/linux/.config

rm -rf mkosi.images/base/mkosi.skeleton
rm -rf mkosi.images/initrd/mkosi.skeleton
rm -rf mkosi.images/gnome/mkosi.skeleton

# Build TimelessOS Base & Artifacts
bst build builds/base.bst
bst build builds/initramfs.bst
bst build builds/gnome.bst

# Checkout the built artifacts
bst artifact checkout builds/base.bst -f --directory mkosi.images/base/mkosi.skeleton
bst artifact checkout builds/initramfs.bst -f --directory mkosi.images/initrd/mkosi.skeleton
bst artifact checkout builds/gnome.bst -f --directory mkosi.images/gnome/mkosi.skeleton
 