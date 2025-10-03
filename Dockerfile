FROM n8nio/n8n:latest

# n8n should bind to all interfaces inside the container
ENV N8N_HOST=0.0.0.0

# Expose default internal port (Railway maps its runtime $PORT -> this internal port)
EXPOSE 5678
