FROM nodered/node-red:3.1.0

ENV NODE_RED_USER_DIR=/data

# Copy settings.js into /app (inside the image)
COPY settings.js /app/settings.js

EXPOSE 1880

# Always load settings.js from /app, store flows in /data
CMD ["node-red", "--settings", "/app/settings.js", "--userDir", "/data"]



