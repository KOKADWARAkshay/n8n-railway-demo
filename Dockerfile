FROM n8nio/n8n:latest

# Railway injects $PORT automatically
ENV N8N_HOST=0.0.0.0

# Expose the port n8n will run on (Railway's $PORT)
EXPOSE $PORT
