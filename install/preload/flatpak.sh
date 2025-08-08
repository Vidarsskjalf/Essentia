#!/bin/bash

sudo dnf install flatpak -y

# Enable Flathub
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
