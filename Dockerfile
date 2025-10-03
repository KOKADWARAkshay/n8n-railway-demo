# Use official n8n image and don't override the image entrypoint/command
FROM n8nio/n8n:latest

# make n8n listen on 0.0.0.0
ENV N8N_HOST=0.0.0.0

# expose the default port inside the container (Railway will map it)
EXPOSE 5678

# Do NOT set a CMD here — let the base image handle starting n8n
