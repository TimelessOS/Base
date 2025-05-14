kind: stack

depends:
- freedesktop-sdk.bst:components/fontconfig.bst

# Todo: Disabled until we've moved more away from FDO
#kind: autotools
#
#sources:
#- kind: git_repo
#  url: fdo:fontconfig/fontconfig
#  track: 2.*
#
#build-depends:
#- buildsystems/autotools.bst
#- freedesktop-sdk.bst:components/gperf.bst
#
#depends:
#- pkgs/freetype.bst
#- pkgs/python3.bst
#- pkgs/libxml2.bst
#
#variables:
#  conf-local: --disable-docs --enable-libxml2