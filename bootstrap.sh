#!/bin/bash

sudo dnf install git -y

echo -e "\nCloning Essentia from: https://github.com/vidarsskjalf/essentia.git"
rm -rf ~/.local/share/essentia/
git clone "https://github.com/vidarsskjalf/essentia.git" ~/.local/share/essentia >/dev/null

echo -e "\nInstalling starting..."
source ~/.local/share/essentia/install.sh
