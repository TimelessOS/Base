kind: meson

sources:
- kind: git_repo
  url: fdo:cairo/cairo
  track: 1.*

build-depends:
- buildsystems/meson.bst
- buildsystems/cmake.bst

depends:
- pkgs/pixman.bst
- pkgs/libpng.bst
- pkgs/lzo.bst
- freedesktop-sdk.bst:components/glib.bst
#- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/xorg-lib-x11.bst
- freedesktop-sdk.bst:components/xorg-lib-xext.bst
- pkgs/fontconfig.bst

variables:
  meson-local: >-
    -Dspectre=disabled
    -Dtests=disabled
    -Dsymbol-lookup=disabled
    -Dlzo=enabled
