#!/bin/bash
# Upgrade PHP version to 8
sudo apt update
sudo apt install -y php8.0
sudo apt install -y php8.1
sudo apt install -y php8.0-common php8.0-mysql php8.0-xml php8.0-gd php8.0-mbstring php8.0-curl
sudo apt install -y php8.1-common php8.1-mysql php8.1-xml php8.1-gd php8.1-mbstring php8.1-curl
sudo a2dismod php7.0
sudo a2enmod php8.0
sudo systemctl restart apache2
sudo php -v
sudo systemctl restart apache2

