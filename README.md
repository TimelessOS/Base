# TimelessOS Base

This is the very base level of TimelessOS, and it's layer will be used for many things, such as a container base, and a system image for servers and desktops.

Bootstrapped off of TimelessOS Bootstrap

# Contributing

## Building

```bash
# Install Buildstream
pipx install buildstream
pipx inject buildstream requests dulwich tomlkit

# Build TimelessOS Base
./build.sh
```

## Making it bootable

```bash
# Make sure MKOSI is installed!

mkosi

# Done this time completely, output in mkosi.output
```

Recommended Command:
`PLATFORM=amd-qemu ./build.sh && mkosi genkey && mkosi --force && mkosi qemu`