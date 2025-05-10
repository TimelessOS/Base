kind: meson

sources:
- kind: git_repo
  url: fdo-git:dbus/dbus.git
  track: dbus-*.*

variables:
  meson-local: '
    --buildtype=release --wrap-mode=nofallback
    -Dsystem_socket="/run/dbus/system_bus_socket"
    -Duser_session=true
    -Dselinux=disabled
    -Dlaunchd=disabled'

build-depends:
  - buildsystems/meson.bst

config:
  install-commands:
  - |
    %{meson-install}
    # mv %{install-root}/lib %{install-root}/usr/lib