kind: meson

sources:
- kind: tar
  url: gnome-tar:gnome-shell/47/gnome-shell-47.4.tar.xz

build-depends:
- buildsystems/meson.bst

depends:
- pkgs/gnome-desktop.bst
