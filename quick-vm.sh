#!/bin/bash

set -eux

# Build TimelessOS Base
bst build all.bst

# Checkout the built artifact
bst artifact checkout all.bst -f

# This is generated from this script, and it does weird stuff if you forget to remove it.
rm -rf mkosi.skeleton
# Move all to mkosi.skeleton
mv all mkosi.skeleton

# Temporary until i can be bothered rebuilding the kernel
mv mkosi.skeleton/boot/vmlinuz mkosi.skeleton/boot/vmlinuz-6.14.6

mkosi
mkosi qemu