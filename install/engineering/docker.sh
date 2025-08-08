#!/bin/bash

dnf install docker docker-compose

# Start Docker automatically
sudo systemctl enable docker

# Add user to Docker group
sudo usermod -aG docker ${USER}
