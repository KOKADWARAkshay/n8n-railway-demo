FROM n8nio/n8n:latest

# Tell n8n to bind to Railway's runtime port
ENV N8N_HOST=0.0.0.0

EXPOSE 5678
