#!/bin/bash
set -e
# simple health check
if ! curl -sfS http://localhost/ > /dev/null; then
  echo "Health check failed"
  exit 1
fi
echo "OK"
