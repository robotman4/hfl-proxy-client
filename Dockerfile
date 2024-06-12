# Use the official Caddy image as the base image
FROM caddy:latest

# Copy the Caddyfile to the appropriate location
COPY Caddyfile /etc/caddy/Caddyfile

# Expose the necessary port
EXPOSE 443

# Use the official Caddy command to start the server
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]

