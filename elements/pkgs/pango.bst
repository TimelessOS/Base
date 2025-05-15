kind: meson

sources:
- kind: git_repo
  url: gnome:GNOME/pango.git
  track: 1.*

build-depends:
- buildsystems/meson.bst

depends:
- pkgs/fontconfig.bst
- pkgs/glib.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- pkgs/cairo.bst
- freedesktop-sdk.bst:components/fribidi.bst

variables:
  meson-local: -D introspection=enabled