#!/bin/bash

# Simple DNS firewall and service configuration script

# Step 1: Allow DNS through firewall (TCP and UDP on port 53)
echo "Adding firewall rules for DNS..."
firewall-cmd --permanent --add-port=53/tcp
firewall-cmd --permanent --add-port=53/udp

# Step 2: Reload firewall to apply changes
echo "Reloading firewall..."
firewall-cmd --reload

# Step 3: Restart the DNS service (named)
echo "Restarting named service..."
systemctl restart named

# Step 4: Check the status of named service
echo "Checking named service status..."
systemctl status named --no-pager

echo "DNS firewall and service configuration completed."
