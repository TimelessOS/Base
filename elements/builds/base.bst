kind: stack

depends:
- groups/base.bst
- groups/bootable.bst

config:
  exclude:
  - devel
  - debug