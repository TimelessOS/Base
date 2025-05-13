kind: meson

sources:
- kind: tar
  url: gnome-tar:gtk/4.16/gtk-4.16.12.tar.xz

depends:
  - buildsystems/meson.bst
  - buildsystems/autotools.bst
  - buildsystems/cmake.bst
  #- pkgs/glib.bst
  - freedesktop-sdk.bst:components/glib.bst
  - pkgs/cairo.bst
  - freedesktop-sdk.bst:components/pango.bst
  - freedesktop-sdk.bst:components/gdk-pixbuf.bst
  - freedesktop-sdk.bst:components/libepoxy.bst
  - freedesktop-sdk.bst:components/libxkbcommon.bst
  - pkgs/wayland-protocols.bst


variables:
  meson-local: "-D broadway-backend=true -D vulkan=enabled -D introspection=enabled --buildtype=release"