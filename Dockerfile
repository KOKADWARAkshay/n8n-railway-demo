FROM n8nio/n8n:latest

# Tell n8n to bind to all interfaces
ENV N8N_HOST=0.0.0.0

# Let Railway provide the runtime PORT; map it to n8n
# Use a fallback 5678 if PORT is not set (so it still works locally).
ENV N8N_PORT=${PORT:-5678}

# Expose the runtime port
EXPOSE ${PORT:-5678}

# DON'T override entrypoint — the base image will start n8n
