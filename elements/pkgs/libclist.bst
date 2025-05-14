kind: meson

sources:
- kind: git_repo
  url: github:c-util/c-list.git
  track: v*

variables:
  meson-local: '
    --wrap-mode=nofallback
    '

build-depends:
  - buildsystems/meson.bst

config:
  install-commands:
  - |
    %{meson-install}
