FROM docker.n8n.io/n8nio/n8n:latest

USER root

# Install sqlite for Debian-based images
RUN apt-get update && apt-get install -y \
    sqlite3 \
    libsqlite3-dev \
    && rm -rf /var/lib/apt/lists/*

USER node
