kind: meson

sources:
- kind: tar
  url:  fdo:wayland/wayland/-/releases/1.23.1/downloads/wayland-1.23.1.tar.xz

build-depends:
- buildsystems/meson.bst

depends:
- pkgs/libxml2.bst

variables:
  meson-local: "-D documentation=false"