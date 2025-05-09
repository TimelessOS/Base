kind: make

sources:
- kind: git_tag
  url: kernel:linux/kernel/git/stable/linux.git
  track: linux-rolling-stable

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst