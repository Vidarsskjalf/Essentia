#!/bin/bash

sudo dnf install docker docker-compose -y

# Start Docker automatically
sudo systemctl enable docker

# Add user to Docker group
sudo usermod -aG docker ${USER}
