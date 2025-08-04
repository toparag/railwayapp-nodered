FROM nodered/node-red:3.1.0

# Run as root so /data volume permissions aren't a problem
USER root

ENV NODE_RED_USER_DIR=/data

COPY settings.js /app/settings.js
COPY entrypoint.sh /entrypoint.sh

# Ensure entrypoint is executable
# (do this locally with chmod +x before pushing)
EXPOSE 1880

ENTRYPOINT ["/entrypoint.sh"]


