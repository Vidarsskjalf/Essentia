#!/bin/bash

# Enable RPM Fusion repos
sudo dnf install \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Backup current config
sudo cp /etc/dnf/dnf.conf /etc/dnf/dnf.conf.bak

# Optimize DNF config
sudo tee /etc/dnf/dnf.conf > /dev/null <<EOF
[main]
gpgcheck=1
installonly_limit=3
clean_requirements_on_remove=True
fastestmirror=True
max_parrallel_downloads=10
deltarpm=True
metadat_timer_sync=10
EOF
