kind: meson

sources:
- kind: git_repo
  url: github:c-util/c-ini.git
  track: v*

variables:
  meson-local: '
    --wrap-mode=nofallback
    '

depends:
  - pkgs/libclist.bst
  - pkgs/libcrbtree.bst
  - pkgs/libcutf8.bst

build-depends:
  - buildsystems/meson.bst

config:
  install-commands:
  - |
    %{meson-install}
