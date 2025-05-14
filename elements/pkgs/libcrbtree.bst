kind: meson

sources:
- kind: git_repo
  url: github:c-util/c-rbtree.git
  track: v*

variables:
  meson-local: '
    --wrap-mode=nofallback
    '

depends:
  - pkgs/libcstdaux.bst

build-depends:
  - buildsystems/meson.bst

config:
  install-commands:
  - |
    %{meson-install}
