kind: meson

sources:
- kind: tar
  url: gnome-tar:gnome-desktop/44/gnome-desktop-44.1.tar.xz

build-depends:
- buildsystems/meson.bst

depends:
- pkgs/gtk4.bst
- pkgs/libxml2.bst

variables:
  meson-local: "
      --buildtype=release"