#!/bin/bash
set -e
# Ensure ownership and permissions
sudo chown -R www-data:www-data /var/www/html || sudo chown -R apache:apache /var/www/html || true
# copy any runtime config (wp-config.php) from SSM or repopulate from template if needed
# Example: pull DB creds from SSM (requires instance role permissions)
# DB_HOST=$(aws ssm get-parameter --name "/prod/rds/endpoint" --query Parameter.Value --output text --region ap-south-1)
# Use simple approach: assume wp-config.php is included or templated elsewhere
