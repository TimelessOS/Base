kind: meson

sources:
- kind: tar
  url: gnome-tar:gtk/4.16/gtk-4.16.12.tar.xz

build-depends:
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/graphene.bst
- buildsystems/meson.bst
- buildsystems/autotools.bst
- buildsystems/cmake.bst

depends:
  - pkgs/glib.bst
  - freedesktop-sdk.bst:components/cairo.bst
  - freedesktop-sdk.bst:components/gstreamer.bst
  - freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
  - freedesktop-sdk.bst:components/gstreamer-plugins-good.bst
  - freedesktop-sdk.bst:components/pango.bst
  - freedesktop-sdk.bst:components/gdk-pixbuf.bst
  - freedesktop-sdk.bst:components/libepoxy.bst
  - freedesktop-sdk.bst:components/libxkbcommon.bst
  - pkgs/wayland-protocols.bst


variables:
  meson-local: "-D broadway-backend=true -D vulkan=enabled -D introspection=enabled -D x11-backend=false"