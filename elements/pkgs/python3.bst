kind: autotools

sources:
- kind: tar
  url: python:3.13.2/Python-3.13.2.tar.xz

build-depends:
- buildsystems/autotools.bst

variables:
  conf-local: "--enable-optimizations" 