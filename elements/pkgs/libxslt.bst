kind: stack

depends:
- freedesktop-sdk.bst:components/libxslt.bst

# Todo: Disabled until we've moved more away from FDO
#kind: autotools
#
#build-depends:
#- buildsystems/autotools.bst
#- groups/runtime-minimal.bst
#
#depends:
#- groups/runtime-minimal.bst
#- pkgs/libxml2.bst
#- pkgs/python3.bst
#
#sources:
#- kind: git_repo
#  url: gnome-git:GNOME/libxslt.git
#  track: v*