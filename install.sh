#!/bin/bash

ESSENTIA_INSTALL=~/.local/share/essentia/install

# Preload
source $ESSENTIA_INSTALL/preload/dnf.sh
source $ESSENTIA_INSTALL/preload/flatpak.sh

# Desktop
source $ESSENTIA_INSTALL/desktop/hyprland.sh
source $ESSENTIA_INSTALL/desktop/bluetooth.sh

# Engineering
source $ESSENTIA_INSTALL/engineering/terminal.sh
source $ESSENTIA_INSTALL/engineering/docker.sh
