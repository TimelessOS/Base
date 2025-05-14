kind: meson

sources:
- kind: tar
  url: github:flatpak/xdg-desktop-portal/releases/download/1.20.0/xdg-desktop-portal-1.20.0.tar.xz

build-depends:
- buildsystems/meson.bst

depends:
- pkgs/xdg-desktop-portal.bst
- pkgs/gtk3.bst
- pkgs/gnome-desktop.bst

variables:
  meson-local: "-D tests=disabled"