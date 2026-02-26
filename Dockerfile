FROM docker.n8n.io/n8nio/n8n:latest

USER root

# Install sqlite for Alpine
RUN apk add --no-cache sqlite sqlite-dev

USER node
