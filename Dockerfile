# Use official n8n image
FROM n8nio/n8n:latest

EXPOSE 5678
# Base image already runs n8n; environment variables set via Railway UI.
