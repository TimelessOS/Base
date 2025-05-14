kind: meson

sources:
- kind: tar
  url: gnome-tar:gnome-session/47/gnome-session-47.0.1.tar.xz

build-depends:
- buildsystems/meson.bst

depends:
- pkgs/gnome-desktop.bst
- pkgs/systemd.bst