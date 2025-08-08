#!/bin/bash

# Install rmp fusion repo
sudo dnf install \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

# Back up dnf.conf file
sudo cp /etc/dnf/dnf.conf /etc/dnf/dnf.conf.bak

# Added dnf tweaks
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
