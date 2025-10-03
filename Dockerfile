FROM n8nio/n8n:latest

# Railway sets PORT dynamically. Tell n8n to use it.
ENV N8N_PORT=$PORT
ENV N8N_HOST=0.0.0.0

EXPOSE $PORT

CMD ["n8n", "start"]
