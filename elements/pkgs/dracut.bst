kind: autotools

sources:
- kind: git_repo
  url: github:dracut-ng/dracut-ng
  track: "107"

- kind: local
  path: files/dracut.conf

depends:
- freedesktop-sdk.bst:components/kmod.bst
- freedesktop-sdk.bst:components/cpio.bst
- freedesktop-sdk.bst:components/pkg-config.bst

variables:
  conf-local: --disable-documentation

config:
  install-commands:
    (>):
    - cp dracut.conf %{install-root}%{libdir}/dracut/dracut.conf.d/10-distro.conf
    - rm -r %{install-root}%{libdir}/kernel