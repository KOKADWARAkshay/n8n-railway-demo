FROM n8nio/n8n:latest

# Railway will inject $PORT, n8n reads it via env
ENV N8N_HOST=0.0.0.0

EXPOSE 5678
