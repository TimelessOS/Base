kind: manual

sources:
- kind: git_tag
  url: kernel:linux/kernel/git/stable/linux.git
  track: linux-rolling-stable

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

config:
  build-commands:
  - make mrproper
  - make headers
  install-commands:
  - |
    find usr/include -name '.*' -delete
    rm -v usr/include/Makefile
  - mkdir -pv %{install-root}%{includedir}
  - cp -rv usr/include/* %{install-root}%{includedir}
