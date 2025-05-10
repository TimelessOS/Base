kind: manual

sources:
- kind: git_tag
  url: kernel:linux/kernel/git/stable/linux.git
  track: linux-rolling-stable
- kind: local
  path: files/linux/.config

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/bc.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/rsync.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/zstd.bst

config:
  build-commands:
  - |
    make PREFIX="%{prefix}"

  install-commands:
  - |
    make modules_install
    cp -iv arch/x86/boot/bzImage %{install-root}/boot/vmlinuz-6.14.5
    cp -iv System.map %{install-root}/boot/System.map-6.14.5
    cp -iv .config %{install-root}/boot/config-6.14.5
    cp -r Documentation -T %{install-root}/usr/share/doc/linux-6.13.4