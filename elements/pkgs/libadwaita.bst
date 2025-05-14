kind: meson

sources:
- kind: tar
  url: gnome-tar:libadwaita/1.6/libadwaita-1.6.4.tar.xz

build-depends:
- buildsystems/meson.bst

depends:
- freedesktop-sdk.bst:components/appstream.bst
- pkgs/gtk4.bst

variables:
  meson-local: "-D tests=disabled"