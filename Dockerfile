# Use the official n8n image
FROM n8nio/n8n:latest

# Set environment variables for production use
ENV N8N_HOST=n8n-railway-demo-production.up.railway.app
ENV N8N_PORT=8080
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=https://n8n-railway-demo-production.up.railway.app/
ENV GENERIC_TIMEZONE=Asia/Kolkata

# Important: tell n8n to listen on all interfaces (not localhost)
ENV N8N_LISTEN_ADDRESS=0.0.0.0

# Railway automatically sets $PORT — so let’s pass it to n8n
# n8n will run internally on 8080 but Railway maps its runtime port
ENV PORT=8080

# Expose port (this will be mapped automatically by Railway)
EXPOSE 8080

# n8n has its own entrypoint, don’t override it.
# Just let the default CMD run
