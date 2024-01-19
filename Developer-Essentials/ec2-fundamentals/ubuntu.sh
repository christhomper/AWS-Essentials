#!/bin/bash
# Use this for your user data (script from top to bottom)
# Update package lists and upgrade the system
apt-get update -y
apt-get upgrade -y

# Install Apache2 (the equivalent of httpd in Ubuntu)
apt-get install -y apache2

# Start the Apache2 service and enable it to start on boot
systemctl start apache2
systemctl enable apache2

# Optional: Additional configuration or software installations can go here
