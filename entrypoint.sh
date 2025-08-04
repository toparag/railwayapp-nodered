#!/bin/sh
# Copy settings.js into /data if missing
if [ ! -f /data/settings.js ]; then
  cp /app/settings.js /data/settings.js
fi

# Start Node-RED
exec npm start
