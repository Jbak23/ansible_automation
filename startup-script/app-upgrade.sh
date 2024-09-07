#!/bin/bash
# Upgrade PHP version to 8
sudo su
apt update
apt install -y php8.0
apt install -y php8.1
apt install -y php8.0-common php8.0-mysql php8.0-xml php8.0-gd php8.0-mbstring php8.0-curl
apt install -y php8.1-common php8.1-mysql php8.1-xml php8.1-gd php8.1-mbstring php8.1-curl
a2dismod php7.0
a2enmod php8.0
systemctl restart apache2
php -v
systemctl restart apache2

