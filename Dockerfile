FROM n8nio/n8n:latest

# Bind to all interfaces inside container
ENV N8N_HOST=0.0.0.0

# Railway maps $PORT to this container port
ENV N8N_PORT=$PORT

# Expose default n8n port (5678 internally, but overridden by $PORT)
EXPOSE 5678

CMD ["n8n", "start"]
