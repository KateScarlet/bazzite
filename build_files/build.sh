#!/bin/bash

set -ouex pipefail

dnf5  --setopt=install_weak_deps=False install -y \
    android-tools bcc bpftop bpftrace ccache git-subtree git-lfs \
    rclone \
    waypipe \
    iotop \
    flatpak-builder \
    papirus-icon-theme \
    ibus-rime librime-lua \
    jetbrains-mono-fonts-all \
    podman-docker containerd \
    qemu qemu-kvm libvirt libvirt-nss virt-manager edk2-ovmf guestfs-tools \
    cockpit-machines cockpit-ostree \
    incus incus-agent

dnf5 -y copr enable scottames/ghostty
dnf5 -y install ghostty

dnf5 clean all
rm -rf /tmp/*
bootc container lint