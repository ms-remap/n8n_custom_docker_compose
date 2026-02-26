# 1. Use a temporary Alpine stage to get the package manager
FROM alpine:latest AS alpine

# 2. Start your n8n build
FROM docker.n8n.io/n8nio/n8n:latest

# 3. Copy the package manager (apk) and its configs from the Alpine stage
COPY --from=alpine /sbin/apk /sbin/apk
COPY --from=alpine /lib/libapk.so* /lib/lib/
COPY --from=alpine /etc/apk /etc/apk

USER root

# 4. Now you can use apk to install what you need
RUN apk add --no-cache sqlite sqlite-dev

USER node
