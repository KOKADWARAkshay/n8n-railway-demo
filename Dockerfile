# ----------------------------
# ✅ STEP 1: Base Image
# ----------------------------
# Use the official n8n image (keeps it lightweight & secure)
FROM n8nio/n8n:latest

# ----------------------------
# ✅ STEP 2: Environment Variables
# ----------------------------
# n8n host domain (replace with your actual Railway app domain)
ENV N8N_HOST=n8n-railway-demo-production.up.railway.app

# Protocol used (Railway gives HTTPS by default)
ENV N8N_PROTOCOL=https

# Webhook URL for external triggers (must match public URL)
ENV WEBHOOK_URL=https://n8n-railway-demo-production.up.railway.app/

# Make n8n listen on all network interfaces
ENV N8N_LISTEN_ADDRESS=0.0.0.0

# Default port inside container (Railway maps $PORT to this)
ENV N8N_PORT=8080
ENV PORT=8080

# Set timezone (optional)
ENV GENERIC_TIMEZONE=Asia/Kolkata

# ----------------------------
# ✅ STEP 3: Security & Authentication
# ----------------------------
# Enable Basic Auth
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=YourStrongPassHere

# Required for credential encryption (MUST be fixed & long)
ENV N8N_ENCRYPTION_KEY=PasteAReallyLongRandomSecretHere

# ----------------------------
# ✅ STEP 4: Database
# ----------------------------
# You can use SQLite for quick demo or PostgreSQL for persistence.
# Comment/uncomment as needed.

# 👉 For SQLite (ephemeral, not recommended for prod):
ENV DB_TYPE=sqlite
ENV DB_SQLITE_POOL_SIZE=5

# 👉 For PostgreSQL (recommended for Railway)
# ENV DB_TYPE=postgresdb
# ENV DB_POSTGRESDB_HOST=<PGHOST>
# ENV DB_POSTGRESDB_PORT=<PGPORT>
# ENV DB_POSTGRESDB_USER=<PGUSER>
# ENV DB_POSTGRESDB_PASSWORD=<PGPASSWORD>
# ENV DB_POSTGRESDB_DATABASE=<PGDATABASE>

# ----------------------------
# ✅ STEP 5: Deprecation & Security Flags
# ----------------------------
# Enables background task runners (future default)
ENV N8N_RUNNERS_ENABLED=true

# Restricts Code Nodes from accessing environment variables (recommended)
ENV N8N_BLOCK_ENV_ACCESS_IN_NODE=true

# Disables unsafe Git bare repo usage
ENV N8N_GIT_NODE_DISABLE_BARE_REPOS=true

# Fixes settings file permissions
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# ----------------------------
# ✅ STEP 6: Production Settings
# ----------------------------
ENV NODE_ENV=production

# Expose internal port
EXPOSE 8080

# ----------------------------
# ✅ STEP 7: Entrypoint
# ----------------------------
# n8n official image already includes proper entrypoint and CMD
# DO NOT override them
