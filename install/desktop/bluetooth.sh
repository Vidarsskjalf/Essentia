#!/bin/bash

dnf install bluez blueman -y

sudo systemctl enable bluetooth --now
