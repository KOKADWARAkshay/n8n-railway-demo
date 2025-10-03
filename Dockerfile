# Use the official n8n image
FROM n8nio/n8n:latest

# Bind to all interfaces & set sane defaults for PaaS
ENV N8N_LISTEN_ADDRESS=0.0.0.0
ENV N8N_PROTOCOL=https
ENV N8N_PORT=8080
ENV GENERIC_TIMEZONE=Asia/Kolkata

# Railway maps its runtime $PORT -> container 8080
ENV PORT=8080

# Expose internal port
EXPOSE 8080

# Do NOT override entrypoint or command (n8n handles it)
