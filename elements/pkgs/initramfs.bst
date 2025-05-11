kind: manual

depends:
- pkgs/dracut.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/util-linux.bst
- pkgs/linux.bst
- freedesktop-sdk.bst:components/systemd.bst

config:
  install-commands:
    - mkdir -p %{install-root}/boot
    - dracut -f --reproducible -v --no-machineid --kver $(ls -1 /lib/modules | head -n1) --tmpdir /tmp %{install-root}/boot/initramfs.zstd