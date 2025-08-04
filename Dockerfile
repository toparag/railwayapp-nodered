FROM nodered/node-red:3.1.0

ENV NODE_RED_USER_DIR=/data

# Copy your repo's settings.js into /app (kept in image)
COPY settings.js /app/settings.js

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 1880

ENTRYPOINT ["/entrypoint.sh"]

