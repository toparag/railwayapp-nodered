#!/bin/sh
echo "Entrypoint: Checking /data/settings.js..."

if [ ! -f /data/settings.js ]; then
  echo "No settings.js found in /data. Copying from /app..."
  cp /app/settings.js /data/settings.js
  chmod 644 /data/settings.js
else
  echo "settings.js already exists in /data."
fi

echo "=== settings.js content ==="
cat /data/settings.js
echo "==========================="

exec node-red --userDir /data

