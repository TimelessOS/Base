kind: autotools

sources:
- kind: git_repo
  url: github:glennrp/libpng.git
  track: v*

build-depends:
- buildsystems/autotools.bst