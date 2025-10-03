FROM n8nio/n8n:latest

# Railway injects $PORT automatically
ENV N8N_HOST=n8n-railway-demo-production.up.railway.app

# Expose the port n8n will run on (Railway's $PORT)
EXPOSE $PORT
