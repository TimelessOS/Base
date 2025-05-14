kind: meson

sources:
- kind: tar
  url: github:flatpak/xdg-desktop-portal/releases/download/1.20.0/xdg-desktop-portal-1.20.0.tar.xz

build-depends:
- buildsystems/meson.bst

depends:
#- pkgs/pipewire.bst
- freedesktop-sdk.bst:components/gdk-pixbuf.bst
- freedesktop-sdk.bst:components/json-glib.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/gstreamer.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-base.bst
- freedesktop-sdk.bst:components/gstreamer-plugins-good.bst

runtime-depends:
- pkgs/dbus.bst

variables:
  meson-local: "-D tests=disabled"