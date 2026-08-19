# syntax=docker/dockerfile:1.7
FROM docker.io/prplanit/static-site:v0.0.2

LABEL maintainer="HomeLabHD <homelabhelp@gmail.com>" \
    org.opencontainers.image.title="sm-lickitung-gen" \
    org.opencontainers.image.description="Minimal container serving a static Supermicro license key generator tool." \
    org.opencontainers.image.source="https://github.com/HomeLabHD/sm-lickitung-gen" \
    org.opencontainers.image.url="https://hub.docker.com/r/hlhd/sm-lickitung-gen" \
    org.opencontainers.image.vendor="HomeLabHD"

# Static content only — non-root nginx, brotli, security headers, readOnlyRootFilesystem
# support, and the :8080 listener all live in the hardened static-site base image.
COPY www-data/ /usr/share/nginx/html/
