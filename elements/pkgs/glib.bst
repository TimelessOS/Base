kind: stack

depends:
- freedesktop-sdk.bst:components/glib.bst

# Todo: Disabled until we've moved more away from FDO
#kind: meson
#
#sources:
#- kind: tar
#  url: gnome-tar:glib/2.82/glib-2.82.5.tar.xz
#
#build-depends:
#  - buildsystems/meson.bst
#  - buildsystems/autotools.bst