#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y papirus-icon-theme \
    ibus-rime librime-lua \
    podman-docker podlet kubernetes1.35-client k9s helm

# Use a COPR Example:
#
dnf5 -y copr enable scottames/ghostty
dnf5 -y install ghostty

dnf5 clean all