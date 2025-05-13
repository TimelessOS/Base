kind: manual

sources:
- kind: tar
  url: https://github.com/boostorg/boost/releases/download/boost-1.88.0/boost-1.88.0-b2-nodocs.tar.xz

build-depends:
- buildsystems/all.bst

config:
  configure-commands:
  - |
    ./bootstrap.sh --prefix=%{install-root}/usr --with-python=python3
  build-commands:
  - |
    ./b2 stage -j$(nproc) threading=multi link=shared
  install-commands:
  - |
    ./b2 install threading=multi link=shared