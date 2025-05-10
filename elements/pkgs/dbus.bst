kind: meson

sources:
- kind: git_repo
  url: fdo-git:dbus/dbus.git
  track: dbus-*.*

variables:
  meson-local: --buildtype=release --wrap-mode=nofallback

build-depends:
  - buildsystems/meson.bst