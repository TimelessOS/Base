kind: meson

sources:
- kind: tar
  url: github:flatpak/xdg-desktop-portal-gtk/releases/download/1.15.2/xdg-desktop-portal-gtk-1.15.2.tar.xz

build-depends:
- buildsystems/meson.bst

depends:
- pkgs/xdg-desktop-portal.bst
- pkgs/gtk3.bst
- pkgs/gnome-desktop.bst