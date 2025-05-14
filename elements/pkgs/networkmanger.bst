kind: meson

sources:
- kind: git_repo
  url: fdo:networkmanager/networkmanager.git
  track: 1*

build-depends:
- buildsystems/meson.bst

depends:
- pkgs/libndp.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/nss.bst

variables:
  meson-local: "-D nmtui=true -D ovs=false -D ppp=false -D selinux=false \
      -D qt=false -D session_tracking=systemd -D modem_manager=false"
