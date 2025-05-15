kind: meson

sources:
- kind: git_repo
  url: fdo:pipewire/pipewire
  track: 1.*

build-depends:
- buildsystems/meson.bst

depends:
- pkgs/dbus.bst
- pkgs/glib.bst

variables:
  meson-local: -D session-managers="[]"