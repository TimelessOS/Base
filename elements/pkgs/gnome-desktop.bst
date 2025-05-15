kind: meson

sources:
- kind: tar
  url: gnome-tar:gnome-desktop/44/gnome-desktop-44.1.tar.xz

build-depends:
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/itstool.bst

depends:
- pkgs/glib.bst
- pkgs/gtk4.bst
- pkgs/libxml2.bst