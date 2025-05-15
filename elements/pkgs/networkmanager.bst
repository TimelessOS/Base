kind: meson

sources:
- kind: git_repo
  url: fdo:networkmanager/networkmanager.git
  track: 1*

build-depends:
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:bootstrap/grep.bst
- freedesktop-sdk.bst:bootstrap/sed.bst
- freedesktop-sdk.bst:components/gobject-introspection.bst
- freedesktop-sdk.bst:components/libxslt.bst

depends:
- pkgs/libndp.bst
- groups/runtime-minimal.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/perl.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:components/util-linux-full.bst
- freedesktop-sdk.bst:components/newt.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:components/glib.bst
- freedesktop-sdk.bst:components/pygobject.bst
- freedesktop-sdk.bst:components/polkit.bst
- freedesktop-sdk.bst:components/jansson.bst
- freedesktop-sdk.bst:components/audit.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/libnvme.bst
- freedesktop-sdk.bst:components/libpsl.bst
- pkgs/dbus.bst

variables:
  meson-local: "-D iwd=true -D nmtui=true -D ovs=false -D ppp=false -D selinux=false \
      -D qt=false -D session_tracking=systemd -D modem_manager=false"
