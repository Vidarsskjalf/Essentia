#!/bin/bash

set -e

ESSENTIA_INSTALL=~/.local/share/essentia/install

# Preload
source $ESSENTIA_INSTALL/preload/dnf.sh
source $ESSENTIA_INSTALL/preload/flatpak.sh

# Desktop
source $ESSENTIA_INSTALL/desktop/bluetooth.sh
source $ESSENTIA_INSTALL/desktop/desktop.sh
source $ESSENTIA_INSTALL/desktop/fonts.sh
source $ESSENTIA_INSTALL/desktop/hyprland.sh
source $ESSENTIA_INSTALL/desktop/printer.sh

# Engineering
source $ESSENTIA_INSTALL/engineering/docker.sh
source $ESSENTIA_INSTALL/engineering/engineering.sh
source $ESSENTIA_INSTALL/engineering/terminal.sh

# Apps
source $ESSENTIA_INSTALL/apps/mimetypes.sh
source $ESSENTIA_INSTALL/apps/webapps.sh
