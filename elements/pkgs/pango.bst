kind: meson

sources:
- kind: git_repo
  url: gnome:GNOME/pango.git
  track: 1.*

build-depends:
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst

depends:
- pkgs/fontconfig.bst
- pkgs/freetype.bst
- pkgs/glib.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- pkgs/cairo.bst
- freedesktop-sdk.bst:components/fribidi.bst
- freedesktop-sdk.bst:components/harfbuzz.bst
- freedesktop-sdk.bst:components/json-glib.bst
- freedesktop-sdk.bst:components/libthai.bst
- freedesktop-sdk.bst:components/xorg-lib-xft.bst

config:
  install-commands:
    (>):
      - |
        ln -s pango2.pc %{install-root}/usr/lib/pkgconfig/pango.pc
        ln -s pangocairo2.pc %{install-root}/usr/lib/pkgconfig/pangocairo.pc

variables:
  meson-local: -D introspection=enabled