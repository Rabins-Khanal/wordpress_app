#!/bin/bash
set -e
# stop web server gracefully
if command -v systemctl >/dev/null 2>&1; then
  sudo systemctl stop apache2 || true
  sudo systemctl stop httpd || true
fi

# backup existing site (optional)
if [ -d /var/www/html ]; then
  sudo mv /var/www/html /var/www/html.bak_$(date +%s) || true
fi
