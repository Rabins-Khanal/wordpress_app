#!/bin/bash
set -e
# start apache
if command -v systemctl >/dev/null 2>&1; then
  sudo systemctl start apache2 || sudo systemctl start httpd || true
fi
