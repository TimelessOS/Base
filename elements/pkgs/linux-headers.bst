kind: make

sources:
- kind: git_tag
  url: kernel:linux/kernel/git/stable/linux.git
  track: linux-rolling-stable

build-depends:
- bootstrap-bare.bst