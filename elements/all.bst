kind: stack

depends:
- freedesktop-sdk.bst:platform.bst
- freedesktop-sdk.bst:sdk.bst
# - pkgs/linux.bst # Currently fails to build. Using Freedesktop instead for now.
- freedesktop-sdk.bst:vm/minimal/efi.bst
