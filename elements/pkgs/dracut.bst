kind: autotools

sources:
- kind: git_repo
  url: github:dracut-ng/dracut-ng
  track: "105"

- kind: local
  path: files/dracut.conf

- kind: local
  path: files/fstab

depends:
- freedesktop-sdk.bst:components/kmod.bst
- freedesktop-sdk.bst:components/cpio.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/btrfs-progs.bst
- freedesktop-sdk.bst:components/xfsprogs.bst

variables:
  conf-local: --disable-documentation

config:
  install-commands:
    (>):
    - cp dracut.conf %{install-root}%{libdir}/dracut/dracut.conf.d/10-distro.conf
    - cp fstab %{install-root}/etc/fstab
    - rm -r %{install-root}%{libdir}/kernel