# Use official n8n image and DO NOT override entrypoint/command
FROM n8nio/n8n:latest

# Bind to all interfaces inside the container
ENV N8N_HOST=n8n-railway-demo.railway.internal

# Expose internal port (n8n default). Railway will map its runtime $PORT to this. #
EXPOSE 5678
