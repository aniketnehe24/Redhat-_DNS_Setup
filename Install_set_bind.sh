#!/bin/bash

# Simple RHEL 9 script to install BIND, start the service, and set hostname

# Exit on any error
set -e

# Install BIND
echo "Installing BIND (bind package)..."
sudo dnf install -y bind bind-utils

# Enable and start named service
echo "Enabling and starting named service..."
sudo systemctl enable --now named

# Set hostname
NEW_HOSTNAME="aniket.an.com"
echo "Setting hostname to $NEW_HOSTNAME..."
sudo hostnamectl set-hostname "$NEW_HOSTNAME"

echo "BIND installed, service started, and hostname set to $NEW_HOSTNAME."
