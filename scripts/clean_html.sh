#!/bin/bash
# Clean the HTML directory before deployment
rm -rf /var/www/html/*

# Optional: ensure correct permissions after cleanup
chown -R www-data:www-data /var/www/html/
chmod -R 755 /var/www/html/
