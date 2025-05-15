kind: junction

sources:
- kind: git_repo
  url: gitlab:freedesktop-sdk/freedesktop-sdk.git
  track: release/24.08*

config:
  overrides:
#    components/wayland.bst: pkgs/wayland.bst
#    components/wayland-protocols.bst: pkgs/wayland-protocols.bst
#    components/libpng.bst: pkgs/libpng.bst
#    components/python3.bst: pkgs/python3.bst
#    components/libxslt.bst: pkgs/libxslt.bst
#    components/libxml2.bst: pkgs/libxml2.bst
#    components/glib.bst: pkgs/glib.bst
    components/dbus.bst: pkgs/dbus.bst
    components/libdbus.bst: pkgs/dbus.bst
    components/pango.bst: pkgs/pango.bst
#    components/cairo.bst: pkgs/cairo.bst