#!/bin/bash

# Preload
bash install/preload/dnf.sh
bash install/preload/flatpak.sh

# Desktop
bash install/desktop/hyprland.sh
bash install/desktop/bluetooth.sh

# Engineering
bash install/engineering/terminal.sh
bash install/engineering/docker.sh
