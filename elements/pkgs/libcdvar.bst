kind: meson

sources:
- kind: git_repo
  url: github:c-util/c-dvar.git
  track: v*

variables:
  meson-local: '
    --wrap-mode=nofallback
    '

depends:
  - pkgs/libcstdaux.bst
  - pkgs/libcutf8.bst

build-depends:
  - buildsystems/meson.bst

config:
  install-commands:
  - |
    %{meson-install}
