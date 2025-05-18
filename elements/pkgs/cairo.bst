kind: meson

sources:
- kind: tar
  url: fdo:cairo/cairo/-/archive/1.18.4/cairo-1.18.4.tar

build-depends:
- buildsystems/meson.bst
- buildsystems/cmake.bst
#- freedesktop-sdk.bst:components/freetype.bst

depends:
- pkgs/pixman.bst
- pkgs/libpng.bst
- pkgs/lzo.bst
- pkgs/glib.bst
- pkgs/freetype.bst
- pkgs/fontconfig.bst

variables:
  meson-local: >-
    -Dspectre=disabled
    -Dtests=disabled
    -Dsymbol-lookup=disabled
    -Dlzo=enabled