kind: stack

depends:
- freedesktop-sdk.bst:platform.bst
- freedesktop-sdk.bst:components/systemd.bst
# TODO: Switch to dbus-broker, temporary to get logind working
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/systemd-ukify.bst