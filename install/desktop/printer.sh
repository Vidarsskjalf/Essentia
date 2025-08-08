#!/bin/bash

sudo dnf install -y cups cups-filters cups-browsed system-config-printer avahi nss-mdns

# Enable and start CUPS
sudo systemctl enable --now cups.service

# Disable multicast DNS in resolved.conf.d
sudo mkdir -p /etc/systemd/resolved.conf.d
echo -e "[Resolve]\nMulticastDNS=no" | sudo tee /etc/systemd/resolved.conf.d/10-disable-multicast.conf

# Enable and start Avahi
sudo systemctl enable --now avahi-daemon.service

# Enable automatic remote printer discovery
if ! grep -q '^CreateRemotePrinters Yes' /etc/cups/cups-browsed.conf; then
    echo 'CreateRemotePrinters Yes' | sudo tee -a /etc/cups/cups-browsed.conf
fi

# Enable and start cups-browsed
sudo systemctl enable --now cups-browsed.service

