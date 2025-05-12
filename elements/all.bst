kind: stack

depends:
- groups/base.bst
- groups/kde.bst
- groups/bootable.bst

config:
  exclude:
  - devel
  - debug