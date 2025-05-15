kind: meson

sources:
- kind: tar
  url: gnome-tar:gtk/3.24/gtk-3.24.48.tar.xz

build-depends:
  - buildsystems/meson.bst
  - buildsystems/autotools.bst

depends:
  - pkgs/glib.bst
  - pkgs/cairo.bst
  - pkgs/pango.bst
  - pkgs/wayland-protocols.bst

variables:
  meson-local: "-D broadway_backend=true"