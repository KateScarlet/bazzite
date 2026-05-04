#!/bin/bash

set -ouex pipefail

dnf5  --setopt=install_weak_deps=False install -y \
    android-tools \
    papirus-icon-theme \
    ibus-rime librime-lua \
    jetbrains-mono-fonts \
    podman-docker qemu libvirt qemu-kvm virt-manager incus containerd

dnf5 -y copr enable scottames/ghostty
dnf5 -y install ghostty

dnf5 clean all
rm -rf /tmp/*
bootc container lint