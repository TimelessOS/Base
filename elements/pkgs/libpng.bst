kind: stack

depends:
- freedesktop-sdk.bst:components/libpng.bst

# Todo: Disabled until we've moved more away from FDO
#kind: autotools
#
#sources:
#- kind: git_repo
#  url: github:glennrp/libpng.git
#  track: v*
#
#build-depends:
#- buildsystems/autotools.bst