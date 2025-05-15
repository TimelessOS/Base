kind: meson

sources:
- kind: git_repo
  url: gnome:GNOME/gtk.git
  track: 4.18.5

build-depends:
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/graphene.bst
- buildsystems/meson.bst

depends:
- pkgs/glib.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/pango.bst
- freedesktop-sdk.bst:components/gdk-pixbuf.bst
- freedesktop-sdk.bst:components/libepoxy.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/vulkan-icd-loader.bst
- freedesktop-sdk.bst:components/hicolor-icon-theme.bst
- freedesktop-sdk.bst:components/cups.bst
- pkgs/wayland-protocols.bst
- pkgs/pango.bst

config:
  build-commands:
  - oaishdoiahsd

#variables:
#  meson-local: "-D broadway-backend=true -D vulkan=enabled -D x11-backend=false"