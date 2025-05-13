kind: meson

sources:
- kind: git_repo
  url: fdo:pixman/pixman
  track: pixman-0.*

build-depends:
- buildsystems/meson.bst
- pkgs/libpng.bst