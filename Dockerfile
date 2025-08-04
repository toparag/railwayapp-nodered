# Use official Node-RED base image
FROM nodered/node-red:3.1.0

# Set user directory to /data (persistent volume)
#ENV NODE_RED_USER_DIR=/data

# Copy your custom settings.js into /data

# Ensure permissions (optional but recommended)
#RUN chown -R node-red:node-red /data

# Expose Node-RED default port
EXPOSE 1880

# Run Node-RED, automatically uses NODE_RED_USER_DIR env var
CMD ["npm", "start"]
