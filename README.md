# TimelessOS Base

This is the very base level of TimelessOS, and it's layer will be used for many things, such as a container base, and a system image for servers and desktops.

Bootstrapped off of TimelessOS Bootstrap

# Contributing

## Building

```bash
# Install Buildstream
pipx install buildstream
pipx inject buildstream requests
pipx inject buildstream dulwich
pipx inject buildstream tomlkit

# Build TimelessOS Base
bst build all.bst

# Checkout the built artifact
bst artifact checkout all.bst

# Check the all directory
echo "=================================="
echo "Built! check ./all"

ls all
```

## Making it bootable

```bash
# Make sure MKOSI is installed!

# Move all to mkosi.skeleton
mv all mkosi.skeleton

mkosi

# Done this time completely, output in mkosi.output
```