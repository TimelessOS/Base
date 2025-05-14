kind: meson

sources:
- kind: git_repo
  url: fdo:dbus/dbus.git
  track: dbus-*.*

variables:
  meson-local: '
    --wrap-mode=nofallback
    -Dsystem_socket="/run/dbus/system_bus_socket"
    -Duser_session=true
    -Dselinux=disabled
    -Dlaunchd=disabled'

depends:
  - freedesktop-sdk.bst:components/systemd.bst

build-depends:
  - buildsystems/meson.bst

config:
  install-commands:
  - |
    %{meson-install}
    rm -rv %{install-root}%{sysconfdir}
    rm -rv %{install-root}%{bindir}/dbus-{cleanup-sockets,test-tool}
    rm -rv %{install-root}%{libdir}/cmake
    rm -v %{install-root}%{libdir}/systemd/{system,user}/dbus.service
    rm -rv %{install-root}%{libdir}/systemd/system/multi-user.target.wants
    rm -rv %{install-root}%{localstatedir}
    rm -rv %{install-root}%{libdir}/tmpfiles.d
