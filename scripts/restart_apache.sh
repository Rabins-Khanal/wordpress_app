#!/bin/bash
# Ensure proper permissions (in case new files need them)
chown -R www-data:www-data /var/www/html/
chmod -R 755 /var/www/html/

# Restart Apache to serve new files
systemctl restart apache2
