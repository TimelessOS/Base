kind: meson

sources:
- kind: tar
  url: gnome-tar:mutter/47/mutter-47.5.tar.xz

build-depends:
- buildsystems/meson.bst

depends:
- pkgs/gnome-desktop.bst

variables:
  meson-local: "-D clutter_tests=false -D tests=disabled -D profiler=false -D libdisplay_info=disabled"