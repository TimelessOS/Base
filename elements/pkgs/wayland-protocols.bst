kind: stack

depends:
- freedesktop-sdk.bst:components/wayland-protocols.bst

# Todo: Disabled until we've moved more away from FDO
#kind: meson
#
#sources:
#- kind: git_repo
#  url: fdo:wayland/wayland-protocols.git
#  track: '*.*'
#
#build-depends:
#- buildsystems/meson.bst
#- buildsystems/cmake.bst
#- pkgs/wayland.bst
#
#depends:
#- pkgs/wayland.bst