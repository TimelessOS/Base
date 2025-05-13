kind: meson

sources:
- kind: tar
  url: gnome-tar:gtk/3.24/gtk-3.24.48.tar.xz

depends:
  - buildsystems/meson.bst
  - buildsystems/autotools.bst
  #- pkgs/glib.bst
  - groups/base.bst
  - pkgs/wayland-protocols.bst

variables:
  meson-local: "-D broadway_backend=true"