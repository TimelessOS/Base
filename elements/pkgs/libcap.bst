kind: make

sources:
- kind: git_repo
  url: kernel:libs/libcap/libcap.git
  track: v*

build-depends:
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:components/linux-pam.bst

variables:
  make-args: sbindir=bin lib=lib