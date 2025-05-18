kind: meson

sources:
- kind: git_repo
  url: gnome:GNOME/librsvg.git
  track: 2.*.*

build-depends:
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:components/cargo-c.bst
- freedesktop-sdk.bst:components/vala.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst

depends:
- freedesktop-sdk.bst:components/gdk-pixbuf.bst
- pkgs/cairo.bst
- pkgs/pango.bst
- freedesktop-sdk.bst:components/dav1d.bst
- pkgs/glib.bst
