FROM docker.n8n.io/n8nio/n8n:latest

USER root

# Install sqlite (Debian-based example)
RUN apt-get update && \
    apt-get install -y sqlite3 && \
    rm -rf /var/lib/apt/lists/*

USER node
