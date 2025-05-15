kind: stack

depends: 
- freedesktop-sdk.bst:components/lua.bst

# Well for this one its actually just broken. TODO
#kind: make
#
#sources:
#- kind: tar
#  url: lua:lua-5.4.7.tar.gz
#- kind: local
#  path: files/lua.pc.in
#  
#build-depends:
#- buildsystems/autotools.bst
#
#depends:
#- groups/runtime-minimal.bst
#
#variables:
#  local_flags: -fPIC
#  make-args: >-
#    PLAT=linux-readline
#    MYCFLAGS="${CFLAGS}"
#    INSTALL_TOP='%{install-root}%{prefix}'
#    INSTALL_LIB='%{install-root}%{libdir}'
#
#config:
#  build-commands: 
#    (>):
#    - make %{make-args} pc > lua.pc
#  install-commands:
#    (>):
#    - mkdir -p %{install-root}/usr/lib/pkgconfig/
#    - install -Dm644 -t '%{install-root}/usr/lib/pkgconfig/' lua.pc
#    - cat lua.pc.in >> %{install-root}/usr/lib/pkgconfig/lua.pc