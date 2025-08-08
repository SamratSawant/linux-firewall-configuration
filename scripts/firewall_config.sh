#!/bin/bash
# Firewall Configuration Script

echo "Configuring UFW Firewall..."

# Enable UFW
sudo ufw enable

# Default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow SSH
sudo ufw allow 22/tcp

# Block Telnet
sudo ufw deny 23/tcp

# Allow HTTP and HTTPS
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp

# Show final status
sudo ufw status verbose

echo "Firewall configuration complete!"
