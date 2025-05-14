kind: meson

sources:
- kind: tar
  url: github:containers/bubblewrap/releases/download/v0.11.0/bubblewrap-0.11.0.tar.xz

build-depends:
- buildsystems/meson.bst

depends:
- pkgs/libcap.bst

variables:
  make-args: -Dtests=false -D selinux=disabled