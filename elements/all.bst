kind: stack

depends:
- freedesktop-sdk.bst:platform.bst
- freedesktop-sdk.bst:sdk.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/systemd-ukify.bst
- pkgs/linux.bst
- freedesktop-sdk.bst:vm/minimal/efi.bst