kind: autotools

sources:
- kind: tar
  url: gnome-tar:libxml2/2.13/libxml2-2.13.6.tar.xz

build-depends:
- buildsystems/autotools.bst
- pkgs/python3.bst

depends:
- pkgs/python3.bst
 
# TODO: Add ICU as a dependency, and create the ICU package. 
# See https://linuxfromscratch.org/blfs/view/stable-systemd/general/libxml2.html for more information.