#!/bin/bash

# Update apt package index
sudo apt-get update

# Install Apache, MySQL, PHP
sudo apt-get install -y apache2 mysql-server php libapache2-mod-php php-mysql

# Clone PHP application from GitHub
git clone https://github.com/f1amy/laravel-realworld-example-app.git /var/www/html/your_php_app

# Configure Apache
sudo mv /var/www/html/your_php_app /var/www/html/your_php_app
sudo chown -R www-data:www-data /var/www/html/your_php_app
sudo chmod -R 755 /var/www/html/your_php_app
sudo systemctl restart apache2

# Configure MySQL
sudo mysql_secure_installation  # Follow the prompts to secure MySQL
