kind: stack

depends:
- freedesktop-sdk.bst:components/freetype.bst

# Todo: Disabled until we've moved more away from FDO
#kind: meson
#
#sources:
#- kind: git_tag
#  url: fdo:freetype/freetype.git
#  track: VER-2-*
#
#build-depends:
#- buildsystems/meson.bst
#
#variables:
#  conf-local: --enable-freetype-config