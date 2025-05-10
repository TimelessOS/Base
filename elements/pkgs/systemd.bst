kind: meson

sources:
- kind: git
  url: github:systemd/systemd.git
  track: v257-stable

variables:
  meson-local: "
      --buildtype=release     \
      -D install-tests=false  \
      -D ldconfig=false       \
      -D rpmmacrosdir=no      \
      -D man=disabled         \
      -D mode=release         \
      -D dev-kvm-mode=0660    \
      -D nobody-group=nogroup \
      -D docdir=/usr/share/doc/systemd-257.3"

config:
  configure-commands:
  - |
    sed -e 's/GROUP="render"/GROUP="video"/' \
    -e 's/GROUP="sgx", //'               \
    -i rules.d/50-udev-default.rules.in
  - |
    %{meson}

build-depends:
  - freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
  - buildsystems/meson.bst
  - freedesktop-sdk.bst:components/python3-jinja2.bst
  - freedesktop-sdk.bst:components/util-linux-full.bst
  - freedesktop-sdk.bst:components/gperf.bst
  - freedesktop-sdk.bst:components/libcap.bst