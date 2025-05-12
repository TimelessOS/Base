kind: stack

depends:
- groups/base.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/systemd-ukify.bst
- pkgs/linux.bst
- freedesktop-sdk.bst:vm/minimal/efi.bst
- pkgs/initramfs.bst