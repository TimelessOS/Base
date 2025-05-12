kind: compose

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:components/dosfstools.bst
- freedesktop-sdk.bst:components/xfsprogs.bst
- freedesktop-sdk.bst:components/btrfs-progs.bst

config:
  exclude:
  - devel
  - debug
  - doc
  - extra