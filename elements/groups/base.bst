kind: stack

depends:
- freedesktop-sdk.bst:components/appstream.bst
#- freedesktop-sdk.bst:components/bluez-libs.bst
- freedesktop-sdk.bst:components/ca-certificates.bst
- freedesktop-sdk.bst:components/curl.bst
- freedesktop-sdk.bst:components/gnupg.bst
- freedesktop-sdk.bst:components/iana-config.bst # Easily Replacable for FDO
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/iso-codes.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/less.bst # Easily Replacable for FDO
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/libavif.bst
- freedesktop-sdk.bst:components/libcap.bst
- pkgs/networkmanager.bst
- pkgs/wireplumber.bst
- pkgs/pipewire.bst
#- freedesktop-sdk.bst:components/libgamemode.bst
- freedesktop-sdk.bst:components/noto-emoji.bst
- freedesktop-sdk.bst:components/nano.bst # Easily Replacable for FDO
- freedesktop-sdk.bst:components/lzip.bst
- freedesktop-sdk.bst:components/locales.bst # Easily Replacable for FDO
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:components/tar.bst
- freedesktop-sdk.bst:components/p11-kit.bst
- freedesktop-sdk.bst:components/openjpeg.bst
#- freedesktop-sdk.bst:components/opus.bst
- freedesktop-sdk.bst:components/tzdata.bst
- freedesktop-sdk.bst:components/wget2.bst # Easily Replacable for FDO
- freedesktop-sdk.bst:components/unzip.bst
- freedesktop-sdk.bst:components/which.bst
- freedesktop-sdk.bst:components/zip.bst
#- freedesktop-sdk.bst:components/cups.bst
- pkgs/dbus.bst
- pkgs/dbus-broker.bst
#- freedesktop-sdk.bst:components/ffmpeg.bst
#- freedesktop-sdk.bst:components/openssh.bst
#- freedesktop-sdk.bst:components/pipewire.bst
- freedesktop-sdk.bst:components/xdg-user-dirs.bst
- freedesktop-sdk.bst:components/zstd.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/expat.bst
- freedesktop-sdk.bst:components/systemd-ukify.bst