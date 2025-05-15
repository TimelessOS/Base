kind: meson

sources:
- kind: git_repo
  url: fdo:pipewire/wireplumber
  track: 0.*

build-depends:
- buildsystems/meson.bst

depends:
- pkgs/pipewire.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- pkgs/lua.bst
- pkgs/glib.bst

variables:
  meson-local: -D system-lua=true