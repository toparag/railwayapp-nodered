FROM nodered/node-red:3.1.0

ENV NODE_RED_USER_DIR=/data

COPY settings.js /app/settings.js
COPY entrypoint.sh /entrypoint.sh

EXPOSE 1880

ENTRYPOINT ["/entrypoint.sh"]


