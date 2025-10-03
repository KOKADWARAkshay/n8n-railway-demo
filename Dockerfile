############################################
# ✅ STEP 1: Base Image
############################################
FROM n8nio/n8n:latest

############################################
# ✅ STEP 2: Core Environment Variables
############################################

# Public domain (Replace with your Railway subdomain)
ENV N8N_HOST=n8n-railway-demo-production.up.railway.app
ENV WEBHOOK_URL=https://n8n-railway-demo-production.up.railway.app/
ENV N8N_PROTOCOL=https

# Make n8n listen on all network interfaces inside container
ENV N8N_LISTEN_ADDRESS=0.0.0.0

# Railway automatically maps its runtime $PORT → 8080
ENV N8N_PORT=8080
ENV PORT=8080

# Optional: Timezone
ENV GENERIC_TIMEZONE=Asia/Kolkata

############################################
# ✅ STEP 3: Security Configuration
############################################

# Enable Basic Authentication for n8n UI
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=YourStrongPassHere

# Required: Encryption key for secure credentials storage
# ⚠️ Must remain same across deployments
ENV N8N_ENCRYPTION_KEY=PasteAReallyLongRandomSecretHere

############################################
# ✅ STEP 4: Database Configuration
############################################

# 🚀 Recommended: PostgreSQL (persistent)
# Uncomment and fill with Railway PG credentials
# ENV DB_TYPE=postgresdb
# ENV DB_POSTGRESDB_HOST=<PGHOST>
# ENV DB_POSTGRESDB_PORT=<PGPORT>
# ENV DB_POSTGRESDB_USER=<PGUSER>
# ENV DB_POSTGRESDB_PASSWORD=<PGPASSWORD>
# ENV DB_POSTGRESDB_DATABASE=<PGDATABASE>

# 🧪 For demo only (SQLite = ephemeral)
ENV DB_TYPE=sqlite
ENV DB_SQLITE_POOL_SIZE=5

############################################
# ✅ STEP 5: Deprecation Fixes & Future-Proofing
############################################

# Enable new Task Runner model
ENV N8N_RUNNERS_ENABLED=true

# Prevent env access in Code nodes (secure)
ENV N8N_BLOCK_ENV_ACCESS_IN_NODE=true

# Disable bare Git repositories (security)
ENV N8N_GIT_NODE_DISABLE_BARE_REPOS=true

# Auto-fix permission warnings
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

############################################
# ✅ STEP 6: Production Mode
############################################
ENV NODE_ENV=production

############################################
# ✅ STEP 7: Port Exposure
############################################
EXPOSE 8080

############################################
# ✅ STEP 8: Entrypoint
############################################
# Do NOT override ENTRYPOINT or CMD.
# The base n8n image already handles startup gracefully.
