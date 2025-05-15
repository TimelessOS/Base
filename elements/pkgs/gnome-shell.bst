kind: meson

sources:
- kind: tar
  url: gnome-tar:gnome-shell/48/gnome-shell-48.1.tar.xz

build-depends:
- buildsystems/meson.bst

depends:
- pkgs/gnome-desktop.bst
