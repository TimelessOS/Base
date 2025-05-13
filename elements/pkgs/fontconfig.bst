kind: autotools

sources:
- kind: git_repo
  url: fdo:fontconfig/fontconfig
  track: 2.*

build-depends:
- buildsystems/autotools.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/gperf.bst

variables:
  conf-local: --disable-docs