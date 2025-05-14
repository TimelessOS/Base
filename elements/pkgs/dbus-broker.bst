kind: meson

sources:
- kind: git_repo
  url: github:bus1/dbus-broker.git
  track: v*

variables:
  meson-local: '
    --wrap-mode=nofallback
    -Dselinux=false
    -Dapparmor=true
    -Dlinux-4-17=true
    -Dsystem-console-users=gdm
    -Daudit=true'

depends:
  - freedesktop-sdk.bst:components/systemd.bst
  - freedesktop-sdk.bst:components/expat.bst
  - pkgs/libcdvar.bst
  - pkgs/libcshquote.bst
  - pkgs/libcrbtree.bst
  - pkgs/libcstdaux.bst
  - pkgs/libclist.bst
  - pkgs/libcini.bst

build-depends:
  - buildsystems/meson.bst
  #- pkgs/dbus.bst

config:
  install-commands:
  - |
    %{meson-install}