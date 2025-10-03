FROM n8nio/n8n:latest

# Railway gives us a dynamic port in $PORT.
# Force n8n to use that instead of 5678.
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=$PORT

EXPOSE $PORT

# Start n8n with the correct port
CMD ["sh", "-c", "export N8N_PORT=$PORT && n8n start"]
