kind: stack

depends:
- freedesktop-sdk.bst:components/python3.bst

# Todo: Disabled until we've moved more away from FDO
#kind: autotools
#
#sources:
#- kind: tar
#  url: python:3.13.2/Python-3.13.2.tar.xz
#
#build-depends:
#- buildsystems/autotools.bst
#
#depends:
#- groups/runtime-minimal.bst
#- freedesktop-sdk.bst:components/expat.bst
## The following are temporary and are sourced from fdo's sdk
#- freedesktop-sdk.bst:components/openssl.bst
#- freedesktop-sdk.bst:bootstrap/zlib.bst
#- freedesktop-sdk.bst:bootstrap/bzip2.bst
#- freedesktop-sdk.bst:bootstrap/xz.bst
#- freedesktop-sdk.bst:components/libffi.bst
#- freedesktop-sdk.bst:components/sqlite.bst
#- freedesktop-sdk.bst:components/gdbm.bst
#
#variables:
#  conf-local: "--enable-optimizations --with-system-expat" 
#
#environment:
#  PKG_CONFIG_PATH: /usr/lib/pkgconfig/
#
#config:
#  install-commands:
#  - make -j1 PREFIX="%{prefix}" DESTDIR="%{install-root}" install
#  - |
#    ln -s python3 %{install-root}/usr/bin/python
#    ln -s pip3 %{install-root}/usr/bin/pip 