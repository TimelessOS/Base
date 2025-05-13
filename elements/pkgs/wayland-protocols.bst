kind: meson

sources:
- kind: git_repo
  url: fdo:wayland/wayland-protocols.git
  track: '*.*'

build-depends:
- buildsystems/meson.bst
- buildsystems/cmake.bst
- pkgs/wayland.bst

depends:
- pkgs/wayland.bst