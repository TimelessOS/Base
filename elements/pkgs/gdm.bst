kind: meson

sources:
- kind: tar
  url: gnome-tar:gdm/47/gdm-47.0.tar.xz

build-depends:
- buildsystems/meson.bst

depends:
- pkgs/gnome-desktop.bst
- pkgs/systemd.bst

runtime-depends:
- pkgs/gnome-session.bst
- pkgs/gnome-shell.bst
- pkgs/systemd.bst