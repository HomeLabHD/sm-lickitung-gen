# syntax=docker/dockerfile:1.7

FROM alpine:3.23.5

LABEL maintainer="HomeLabHD <homelabhelp@gmail.com>" \
    org.opencontainers.image.title="sm-lickitung-gen" \
    org.opencontainers.image.description="Minimal container serving a static Supermicro license key generator tool." \
    org.opencontainers.image.source="https://github.com/HomeLabHD/sm-lickitung-gen" \
    org.opencontainers.image.url="https://hub.docker.com/r/hlhd/sm-lickitung-gen" \
    org.opencontainers.image.documentation="https://github.com/HomeLabHD/sm-lickitung-gen#readme" \
    org.opencontainers.image.vendor="HomeLabHD"

# Install nginx
RUN apk add --no-cache nginx ca-certificates tzdata gettext

# Create paths nginx expects
RUN mkdir -p /var/cache/nginx /etc/nginx/conf.d /etc/nginx/templates

# Copy nginx configs
COPY src/nginx/nginx.conf /etc/nginx/nginx.conf
COPY src/nginx/default.conf.template /etc/nginx/templates/default.conf.template

# Copy entrypoint
COPY src/scripts/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Copy static site into web root
COPY src/www/ /usr/share/nginx/html/

# Set ownership for non-root operation
RUN chown -R nginx:nginx /usr/share/nginx/html /var/cache/nginx /etc/nginx/conf.d

ENV LISTEN_PORT=8080

EXPOSE 8080
USER nginx
STOPSIGNAL SIGQUIT
ENTRYPOINT ["/entrypoint.sh"]
